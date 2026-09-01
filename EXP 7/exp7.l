%{
#include <stdio.h>
%}

%%
.*com$ {printf("ends with com"); }
.*  {printf("not end with com"); }
%%
int main()
{
    printf("Enter: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
