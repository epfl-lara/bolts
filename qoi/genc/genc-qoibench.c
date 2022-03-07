// Tweaked version of https://github.com/phoboslab/qoi/blob/master/qoibench.c
// with the following changes:
//   - Removed libpng benchmarking
//   - Added genc_qoi benchmarking

/*

Simple benchmark suite for png, stbi and qoi

Requires libpng, "stb_image.h" and "stb_image_write.h"
Compile with:
    gcc qoibench.c -std=gnu99 -lpng -O3 -o qoibench

Dominic Szablewski - https://phoboslab.org


-- LICENSE: The MIT License(MIT)

Copyright(c) 2021 Dominic Szablewski

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files(the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions :
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

#include <stdio.h>
#include <dirent.h>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_ONLY_PNG
#define STBI_NO_LINEAR
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#define QOI_IMPLEMENTATION
#include "qoi.h"

#include "genc-bridge.h"

// -----------------------------------------------------------------------------
// Cross platform high resolution timer
// From https://gist.github.com/ForeverZer0/0a4f80fc02b96e19380ebb7a3debbee5

#include <stdint.h>
#if defined(__linux)
    #define HAVE_POSIX_TIMER
    #include <time.h>
    #ifdef CLOCK_MONOTONIC
        #define CLOCKID CLOCK_MONOTONIC
    #else
        #define CLOCKID CLOCK_REALTIME
    #endif
#elif defined(__APPLE__)
    #define HAVE_MACH_TIMER
    #include <mach/mach_time.h>
#elif defined(_WIN32)
    #define WIN32_LEAN_AND_MEAN
    #include <windows.h>
#endif

static uint64_t ns() {
    static uint64_t is_init = 0;
#if defined(__APPLE__)
        static mach_timebase_info_data_t info;
        if (0 == is_init) {
            mach_timebase_info(&info);
            is_init = 1;
        }
        uint64_t now;
        now = mach_absolute_time();
        now *= info.numer;
        now /= info.denom;
        return now;
#elif defined(__linux)
        static struct timespec linux_rate;
        if (0 == is_init) {
            clock_getres(CLOCKID, &linux_rate);
            is_init = 1;
        }
        uint64_t now;
        struct timespec spec;
        clock_gettime(CLOCKID, &spec);
        now = spec.tv_sec * 1.0e9 + spec.tv_nsec;
        return now;
#elif defined(_WIN32)
        static LARGE_INTEGER win_frequency;
        if (0 == is_init) {
            QueryPerformanceFrequency(&win_frequency);
            is_init = 1;
        }
        LARGE_INTEGER now;
        QueryPerformanceCounter(&now);
        return (uint64_t) ((1e9 * now.QuadPart)	/ win_frequency.QuadPart);
#endif
}

#define STRINGIFY(x) #x
#define TOSTRING(x) STRINGIFY(x)
#define ERROR(...) printf("abort at line " TOSTRING(__LINE__) ": " __VA_ARGS__); printf("\n"); exit(1)

// -----------------------------------------------------------------------------
// stb_image encode callback

void stbi_write_callback(void *context, void *data, int size) {
    int *encoded_size = (int *)context;
    *encoded_size += size;
    // In theory we'd need to do another malloc(), memcpy() and free() here to
    // be fair to the other decode functions...
}

// -----------------------------------------------------------------------------
// function to load a whole file into memory

void *fload(const char *path, int *out_size) {
    FILE *fh = fopen(path, "rb");
    if (!fh) {
        ERROR("Can't open file");
    }

    fseek(fh, 0, SEEK_END);
    int size = ftell(fh);
    fseek(fh, 0, SEEK_SET);

    void *buffer = malloc(size);
    if (!buffer) {
        ERROR("Malloc for %d bytes failed", size);
    }

    if (!fread(buffer, size, 1, fh)) {
        ERROR("Can't read file %s", path);
    }
    fclose(fh);

    *out_size = size;
    return buffer;
}


// -----------------------------------------------------------------------------
// benchmark runner


int opt_runs = 1;
int opt_nopng = 0;
int opt_nowarmup = 0;
int opt_noverify = 0;
int opt_nodecode = 0;
int opt_noencode = 0;
int opt_norecurse = 0;
int opt_onlytotals = 0;


typedef struct {
    uint64_t size;
    uint64_t encode_time;
    uint64_t decode_time;
} benchmark_lib_result_t;

typedef struct {
    int count;
    uint64_t raw_size;
    uint64_t px;
    int w;
    int h;
    benchmark_lib_result_t stbi;
    benchmark_lib_result_t qoi;
    benchmark_lib_result_t genc_qoi;
} benchmark_result_t;


void benchmark_print_result(benchmark_result_t res) {
    res.px /= res.count;
    res.raw_size /= res.count;
    res.stbi.encode_time /= res.count;
    res.stbi.decode_time /= res.count;
    res.stbi.size /= res.count;
    res.qoi.encode_time /= res.count;
    res.qoi.decode_time /= res.count;
    res.qoi.size /= res.count;
    res.genc_qoi.encode_time /= res.count;
    res.genc_qoi.decode_time /= res.count;
    res.genc_qoi.size /= res.count;

    double px = res.px;
    printf("          decode ms   encode ms   decode mpps   encode mpps   size kb    rate\n");
    if (!opt_nopng) {
        printf(
            "stbi:      %8.1f    %8.1f      %8.2f      %8.2f  %8ld   %4.1f%%\n",
            (double)res.stbi.decode_time/1000000.0,
            (double)res.stbi.encode_time/1000000.0,
            (res.stbi.decode_time > 0 ? px / ((double)res.stbi.decode_time/1000.0) : 0),
            (res.stbi.encode_time > 0 ? px / ((double)res.stbi.encode_time/1000.0) : 0),
            res.stbi.size/1024,
            ((double)res.stbi.size/(double)res.raw_size) * 100.0
        );
    }
    printf(
        "qoi:       %8.1f    %8.1f      %8.2f      %8.2f  %8ld   %4.1f%%\n",
        (double)res.qoi.decode_time/1000000.0,
        (double)res.qoi.encode_time/1000000.0,
        (res.qoi.decode_time > 0 ? px / ((double)res.qoi.decode_time/1000.0) : 0),
        (res.qoi.encode_time > 0 ? px / ((double)res.qoi.encode_time/1000.0) : 0),
        res.qoi.size/1024,
        ((double)res.qoi.size/(double)res.raw_size) * 100.0
    );
    printf(
        "genc_qoi:  %8.1f    %8.1f      %8.2f      %8.2f  %8ld   %4.1f%%\n",
        (double)res.genc_qoi.decode_time/1000000.0,
        (double)res.genc_qoi.encode_time/1000000.0,
        (res.genc_qoi.decode_time > 0 ? px / ((double)res.genc_qoi.decode_time/1000.0) : 0),
        (res.genc_qoi.encode_time > 0 ? px / ((double)res.genc_qoi.encode_time/1000.0) : 0),
        res.genc_qoi.size/1024,
        ((double)res.genc_qoi.size/(double)res.raw_size) * 100.0
    );
    printf("\n");
}

// Run __VA_ARGS__ a number of times and measure the time taken. The first
// run is ignored.
#define BENCHMARK_FN(NOWARMUP, RUNS, AVG_TIME, ...) \
    do { \
        uint64_t time = 0; \
        for (int i = NOWARMUP; i <= RUNS; i++) { \
            uint64_t time_start = ns(); \
            __VA_ARGS__ \
            uint64_t time_end = ns(); \
            if (i > 0) { \
                time += time_end - time_start; \
            } \
        } \
        AVG_TIME = time / RUNS; \
    } while (0)


benchmark_result_t benchmark_image(const char *path) {
    int encoded_png_size;
    int encoded_qoi_size;
    int w;
    int h;
    int channels;

    // Load the encoded PNG, encoded QOI and raw pixels into memory
    if(!stbi_info(path, &w, &h, &channels)) {
        ERROR("Error decoding header %s", path);
    }

    if (channels != 3) {
        channels = 4;
    }

    void *pixels = (void *)stbi_load(path, &w, &h, NULL, channels);
    void *encoded_png = fload(path, &encoded_png_size);
    void *encoded_qoi = qoi_encode(pixels, &(qoi_desc){
            .width = w,
            .height = h,
            .channels = channels,
            .colorspace = QOI_SRGB
        }, &encoded_qoi_size);

    if (!pixels || !encoded_qoi || !encoded_png) {
        ERROR("Error decoding %s", path);
    }

    // Verify QOI Output

    if (!opt_noverify) {
        qoi_desc dc;
        void *pixels_qoi = qoi_decode(encoded_qoi, encoded_qoi_size, &dc, channels);
        if (memcmp(pixels, pixels_qoi, w * h * channels) != 0) {
            ERROR("QOI roundtrip pixel mismatch for %s", path);
        }
        free(pixels_qoi);
    }



    benchmark_result_t res = {0};
    res.count = 1;
    res.raw_size = w * h * channels;
    res.px = w * h;
    res.w = w;
    res.h = h;


    // Decoding

    if (!opt_nodecode) {
        if (!opt_nopng) {
            BENCHMARK_FN(opt_nowarmup, opt_runs, res.stbi.decode_time, {
                int dec_w, dec_h, dec_channels;
                void *dec_p = stbi_load_from_memory(encoded_png, encoded_png_size, &dec_w, &dec_h, &dec_channels, 4);
                free(dec_p);
            });
        }

        BENCHMARK_FN(opt_nowarmup, opt_runs, res.qoi.decode_time, {
            qoi_desc desc;
            void *dec_p = qoi_decode(encoded_qoi, encoded_qoi_size, &desc, 4);
            free(dec_p);
        });
        BENCHMARK_FN(opt_nowarmup, opt_runs, res.genc_qoi.decode_time, {
            void *dec_p = NULL; // In case genc_qoi_decode returns an error and does not write in dec_p.
            int w, h, channels;
            genc_qoi_decode(encoded_qoi, encoded_qoi_size, &dec_p, &w, &h, &channels);
            free(dec_p);
        });
    }


    // Encoding
    if (!opt_noencode) {
        if (!opt_nopng) {
            BENCHMARK_FN(opt_nowarmup, opt_runs, res.stbi.encode_time, {
                int enc_size = 0;
                stbi_write_png_to_func(stbi_write_callback, &enc_size, w, h, channels, pixels, 0);
                res.stbi.size = enc_size;
            });
        }

        BENCHMARK_FN(opt_nowarmup, opt_runs, res.qoi.encode_time, {
            int enc_size;
            void *enc_p = qoi_encode(pixels, &(qoi_desc){
                .width = w,
                .height = h,
                .channels = channels,
                .colorspace = QOI_SRGB
            }, &enc_size);
            res.qoi.size = enc_size;
            free(enc_p);
        });
        BENCHMARK_FN(opt_nowarmup, opt_runs, res.genc_qoi.encode_time, {
            void *enc_p = NULL;
            size_t enc_size = 0;
            genc_qoi_encode(pixels, w, h, channels, &enc_p, &enc_size);
            res.genc_qoi.size = enc_size;
            free(enc_p);
        });
    }

    free(pixels);
    free(encoded_png);
    free(encoded_qoi);

    return res;
}

void benchmark_directory(const char *path, benchmark_result_t *grand_total) {
    DIR *dir = opendir(path);
    if (!dir) {
        ERROR("Couldn't open directory %s", path);
    }

    struct dirent *file;

    if (!opt_norecurse) {
        for (int i = 0; (file = readdir(dir)) != NULL; i++) {
            if (
                file->d_type & DT_DIR &&
                strcmp(file->d_name, ".") != 0 &&
                strcmp(file->d_name, "..") != 0
            ) {
                char subpath[1024];
                snprintf(subpath, 1024, "%s/%s", path, file->d_name);
                benchmark_directory(subpath, grand_total);
            }
        }
        rewinddir(dir);
    }

    benchmark_result_t dir_total = {0};

    int has_shown_head = 0;
    for (int i = 0; (file = readdir(dir)) != NULL; i++) {
        if (strcmp(file->d_name + strlen(file->d_name) - 4, ".png") != 0) {
            continue;
        }

        if (!has_shown_head) {
            has_shown_head = 1;
            printf("## Benchmarking %s/*.png -- %d runs\n\n", path, opt_runs);
        }

        char *file_path = malloc(strlen(file->d_name) + strlen(path)+8);
        sprintf(file_path, "%s/%s", path, file->d_name);

        benchmark_result_t res = benchmark_image(file_path);

        if (!opt_onlytotals) {
            printf("## %s size: %dx%d\n", file_path, res.w, res.h);
            benchmark_print_result(res);
        }

        free(file_path);

        dir_total.count++;
        dir_total.raw_size += res.raw_size;
        dir_total.px += res.px;
        dir_total.stbi.encode_time += res.stbi.encode_time;
        dir_total.stbi.decode_time += res.stbi.decode_time;
        dir_total.stbi.size += res.stbi.size;
        dir_total.qoi.encode_time += res.qoi.encode_time;
        dir_total.qoi.decode_time += res.qoi.decode_time;
        dir_total.qoi.size += res.qoi.size;
        dir_total.genc_qoi.encode_time += res.genc_qoi.encode_time;
        dir_total.genc_qoi.decode_time += res.genc_qoi.decode_time;
        dir_total.genc_qoi.size += res.genc_qoi.size;

        grand_total->count++;
        grand_total->raw_size += res.raw_size;
        grand_total->px += res.px;
        grand_total->stbi.encode_time += res.stbi.encode_time;
        grand_total->stbi.decode_time += res.stbi.decode_time;
        grand_total->stbi.size += res.stbi.size;
        grand_total->qoi.encode_time += res.qoi.encode_time;
        grand_total->qoi.decode_time += res.qoi.decode_time;
        grand_total->qoi.size += res.qoi.size;
        grand_total->genc_qoi.encode_time += res.genc_qoi.encode_time;
        grand_total->genc_qoi.decode_time += res.genc_qoi.decode_time;
        grand_total->genc_qoi.size += res.genc_qoi.size;
    }
    closedir(dir);

    if (dir_total.count > 0) {
        printf("## Total for %s\n", path);
        benchmark_print_result(dir_total);
    }
}

int main(int argc, char **argv) {
    if (argc < 3) {
        printf("Usage: genc-qoibench <iterations> <directory> [options]\n");
        printf("Options:\n");
        printf("    --nowarmup ... don't perform a warmup run\n");
        printf("    --nopng ...... don't run png encode/decode\n");
        printf("    --noverify ... don't verify qoi roundtrip\n");
        printf("    --noencode ... don't run encoders\n");
        printf("    --nodecode ... don't run decoders\n");
        printf("    --norecurse .. don't descend into directories\n");
        printf("    --onlytotals . don't print individual image results\n");
        printf("Examples\n");
        printf("    qoibench 10 images/textures/\n");
        printf("    qoibench 1 images/textures/ --nopng --nowarmup\n");
        exit(1);
    }

    for (int i = 3; i < argc; i++) {
        if (strcmp(argv[i], "--nowarmup") == 0) { opt_nowarmup = 1; }
        else if (strcmp(argv[i], "--nopng") == 0) { opt_nopng = 1; }
        else if (strcmp(argv[i], "--noverify") == 0) { opt_noverify = 1; }
        else if (strcmp(argv[i], "--noencode") == 0) { opt_noencode = 1; }
        else if (strcmp(argv[i], "--nodecode") == 0) { opt_nodecode = 1; }
        else if (strcmp(argv[i], "--norecurse") == 0) { opt_norecurse = 1; }
        else if (strcmp(argv[i], "--onlytotals") == 0) { opt_onlytotals = 1; }
        else { ERROR("Unknown option %s", argv[i]); }
    }

    opt_runs = atoi(argv[1]);
    if (opt_runs <=0) {
        ERROR("Invalid number of runs %d", opt_runs);
    }

    benchmark_result_t grand_total = {0};
    benchmark_directory(argv[2], &grand_total);

    if (grand_total.count > 0) {
        printf("# Grand total for %s\n", argv[2]);
        benchmark_print_result(grand_total);
    }
    else {
        printf("No images found in %s\n", argv[2]);
    }

    return 0;
}
