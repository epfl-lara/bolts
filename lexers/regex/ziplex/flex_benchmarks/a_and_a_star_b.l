%option noyywrap nodefault nounput noinput
%option 8bit
%{
#include <stdint.h>
#include <stdio.h>

static uint64_t count_a = 0;
static uint64_t count_asb = 0;
%}

%%

a*b         { count_asb++; }   /* matches b, ab, aaab, ... */
a           { count_a++; }     /* matches a when a*b can't match longer */
.|\n        { /* consume everything else */ }

%%

int main(void) {
    yylex();
    printf("a=%llu a*b=%llu\n",
           (unsigned long long)count_a,
           (unsigned long long)count_asb);
    return 0;
}
