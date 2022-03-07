#include <stdio.h>
#include "stainless.h"
#include "genc-bridge.h"

int genc_qoi_decode(void *data, size_t length, void **pixels, int *w, int *h, int *channels) {
    OptionMut_DecodedResult decoded_res = decode((array_int8) { .data = data, .length = length }, length);
    if (decoded_res.tag == tag_SomeMut_DecodedResult) {
        *pixels = decoded_res.value.SomeMut_DecodedResult_v.v.pixels.data;
        *w = decoded_res.value.SomeMut_DecodedResult_v.v.w;
        *h = decoded_res.value.SomeMut_DecodedResult_v.v.h;
        *channels = decoded_res.value.SomeMut_DecodedResult_v.v.chan;
        return 1;
    } else {
        return 0;
    }
}

int genc_qoi_encode(void *pixels, int w, int h, int channels, void **data, size_t *length) {
    OptionMut_EncodedResult encoded_res = encode((array_int8) { .data = pixels, .length = w * h * channels }, w, h, channels);
    if (encoded_res.tag == tag_SomeMut_EncodedResult) {
        *data = encoded_res.value.SomeMut_EncodedResult_v.v.encoded.data;
        *length = encoded_res.value.SomeMut_EncodedResult_v.v.length;
        return 1;
    } else {
        return 0;
    }
}

int genc_qoi_read(const char *filename, void **pixels, int *w, int *h, int *channels) {
    FILE *f = fopen(filename, "rb");

    if (!f) {
        return 0;
    }

    fseek(f, 0, SEEK_END);
    long size = ftell(f);
    if (size <= 0) {
        fclose(f);
        return 0;
    }
    fseek(f, 0, SEEK_SET);

    int8_t *data = malloc(size);
    if (!data) {
        fclose(f);
        return 0;
    }

    size_t bytes_read = fread(data, 1, size, f);
    fclose(f);
    if (bytes_read != size) {
        return 0;
    }

    int res = genc_qoi_decode(data, size, pixels, w, h, channels);
    free(data);
    return res;
}

int genc_qoi_write(const char *filename, void *pixels, int w, int h, int channels) {
    void *data;
    size_t length;
    int enc_res = genc_qoi_encode(pixels, w, h, channels, &data, &length);
    if (!enc_res) {
        return 0;
    }

    FILE *f = fopen(filename, "wb");
    if (!f) {
        return 0;
    }

    size_t written = fwrite(data, 1, length, f);
    fclose(f);
    free(data);
    return written == length;
}
