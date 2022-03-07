// Tweaked version of https://github.com/phoboslab/qoi/blob/master/qoiconv.c
// where we call genc_qoi_read and genc_qoi_write instead of qoi_read and qoi_write

/*

Command line tool to convert between png <> qoi format

Requires "stb_image.h" and "stb_image_write.h"
Compile with:
    gcc qoiconv.c -std=c99 -O3 -o qoiconv

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


#define STB_IMAGE_IMPLEMENTATION
#define STBI_ONLY_PNG
#define STBI_NO_LINEAR
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#include "genc-bridge.h"

#define STR_ENDS_WITH(S, E) (strcmp(S + strlen(S) - (sizeof(E)-1), E) == 0)


int main(int argc, char **argv) {
    if (argc < 3) {
        puts("Usage: genc-qoiconv <infile> <outfile>");
        puts("Examples:");
        puts("  genc-qoiconv input.png output.qoi");
        puts("  genc-qoiconv input.qoi output.png");
        exit(1);
    }

    void *pixels = NULL;
    int w, h, channels;
    if (STR_ENDS_WITH(argv[1], ".png")) {
        if(!stbi_info(argv[1], &w, &h, &channels)) {
            printf("Couldn't read header %s\n", argv[1]);
            exit(1);
        }

        // Force all odd encodings to be RGBA
        if(channels != 3) {
            channels = 4;
        }

        pixels = (void *)stbi_load(argv[1], &w, &h, NULL, channels);
    }
    else if (STR_ENDS_WITH(argv[1], ".qoi")) {
        genc_qoi_read(argv[1], &pixels, &w, &h, &channels);
    }

    if (pixels == NULL) {
        printf("Couldn't load/decode %s\n", argv[1]);
        exit(1);
    }

    int encoded = 0;
    if (STR_ENDS_WITH(argv[2], ".png")) {
        encoded = stbi_write_png(argv[2], w, h, channels, pixels, 0);
    }
    else if (STR_ENDS_WITH(argv[2], ".qoi")) {
        encoded = genc_qoi_write(argv[2], pixels, w, h, channels);
    }

    if (!encoded) {
        printf("Couldn't write/encode %s\n", argv[2]);
        exit(1);
    }

    free(pixels);
    return 0;
}
