%{
#include <stdio.h>

char changeCase(char c) {
    if (c >= 'a' && c <= 'z')
        return c - 'a' + 'A';
    else if (c >= 'A' && c <= 'Z')
        return c - 'A' + 'a';

    return c;
}
%}

%%
[a-zA-Z] { putchar(changeCase(yytext[0])); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

