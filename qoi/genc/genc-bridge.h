#include <stdint.h>

int genc_qoi_decode(void *data, size_t length, void **pixels, int *w, int *h, int *channels);

int genc_qoi_encode(void *pixels, int w, int h, int channels, void **data, size_t *length);

int genc_qoi_read(const char *filename, void **pixels, int *w, int *h, int *channels);

int genc_qoi_write(const char *filename, void *pixels, int w, int h, int channels);