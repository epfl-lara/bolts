%{
#include "global.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>
#include <dirent.h>


unsigned int nbChar=0, nbToken=0;
enum  {
    INT=1,
    FLOAT,
    STRING,
    TRUE_t,
    FALSE_t,
    NULL_t,
    COLON,
    COMMA,
    LEFT_BRACE,
    RIGHT_BRACE,
    LEFT_BRACK,
    RIGHT_BRACK,
    WS
};

typedef struct {
    char * filename;
    unsigned int len;
    unsigned int rest_len;
    double time;
    unsigned int lexlen;
} lex_res;

%}

%option noyywrap

/** Verbatim JSON definition */
ws_carr_re  [/\t/\n/\r ]+
exp_part_re [eE][-+]?[0-9]+
int_re  "-"?("0"|([1-9][0-9]*))
dec_re  {int_re}("."[0-9]+)?
float_re    {dec_re}{exp_part_re}?
punc_re "!"|"#"|"$"|"%"|"&"|"("|")"|"*"|"+"|","|"-"|"."|"/"|":"|";"|"<"|"="|">"|"?"|"@"|"["|"]"|"^"|"_"|"`"|"{"|"|"|"}"|"~"|"'"
unicode_digit_re    [0-9a-fA-F]
four_unicode_digits_re  {unicode_digit_re}{unicode_digit_re}{unicode_digit_re}{unicode_digit_re}
unicode_codepoint_re    "\\""u"{four_unicode_digits_re}
json_char_re    {unicode_codepoint_re}|[A-Z]|[a-z]|[0-9]|[/\t/\n ]|{punc_re}|("\\""\"")|("\\""\\")
json_string_re  "\""{json_char_re}*"\""
/* End of Verbatim JSON definition */

%%
{ws_carr_re}    {  nbChar+=yyleng; ++nbToken; return WS; }
{int_re}      { nbChar+=yyleng; ++nbToken; yylval.i = atoi(yytext); return INT; }
{float_re}    { nbChar+=yyleng; ++nbToken; yylval.f = atof(yytext); return FLOAT; }
"true"   { nbChar+=yyleng; ++nbToken; return TRUE_t; }
"false"  { nbChar+=yyleng; ++nbToken; return FALSE_t; }
"null"   { nbChar+=yyleng; ++nbToken; return NULL_t; }
{json_string_re} { nbChar+=yyleng; ++nbToken; yylval.s = strdup(yytext); return STRING; }
"{"      { nbChar+=yyleng; ++nbToken; return LEFT_BRACE; }
"}"      { nbChar+=yyleng; ++nbToken; return RIGHT_BRACE; }
"["      { nbChar+=yyleng; ++nbToken; return LEFT_BRACK; }
"]"      { nbChar+=yyleng; ++nbToken; return RIGHT_BRACK; }
":"      { nbChar+=yyleng; ++nbToken; return COLON; }
","      { nbChar+=yyleng; ++nbToken; return COMMA; }

%%

lex_res evaluate(char * filename) {
    assert(filename);
    char* realFilename = malloc(30 + strlen(filename));
    realFilename[0] = 0;
    strcat(realFilename, "../../data-small/");
    strcat(realFilename, filename);
    yyin = fopen( realFilename, "r" );
    assert(yyin);
    nbChar = 0;
    nbToken = 0;
    int token;
    clock_t begin = clock();
    do {
        token = yylex();
    } while(token);
    clock_t end = clock();
    fseek(yyin, 0L, SEEK_END);
    lex_res result;
    result.len = ftell(yyin);
    result.rest_len = result.len - nbChar;
    fclose(yyin);
    result.filename = strdup(filename);
    result.lexlen = nbToken;
    result.time = (double)(end - begin) / CLOCKS_PER_SEC;
    free(realFilename);
    return result;
}

void print_evaluation(lex_res res) {
    assert(res.filename);
    char* realFilename = malloc(30 + strlen(res.filename));
    realFilename[0] = 0;
    strcat(realFilename, "../../results/flex/");
    strcat(realFilename, res.filename);
    //printf("Writting: %s\n", realFilename);
    FILE* f = fopen( realFilename, "w" );
    assert(f);
    fprintf(f, "{\n\"fname\":\"%s\",\n \"input_len\":%d,\n \"times\":[%lf],\n \"rest_len\":%d,\n\"sem_tokens_len\":", 
        res.filename,
        res.len,
        res.time,
        res.rest_len);
    if(res.rest_len > 0) {
        fprintf(f, "\"None\"");
    }
    else {
        fprintf(f, "\"Some %d\"", res.lexlen);
    }
    fprintf(f, "\n}");
    fclose(f);
    free(realFilename);
}

int main() {
    DIR *d;
    struct dirent *dir;
    d = opendir("../../data-small");
    if (d)
    {
        while ((dir = readdir(d)) != NULL)
        {
            assert(dir->d_name);
            //printf("Lexing %s\n", dir->d_name);
            int len = strlen(dir->d_name);
            if(len > 5 && !strcmp(dir->d_name + len - 5, ".json"))
                print_evaluation(evaluate(dir->d_name));
        }
        closedir(d);
    }
    return 0;
}









