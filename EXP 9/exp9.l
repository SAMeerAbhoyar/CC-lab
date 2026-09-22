%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
"++" {return INC;}
"--" {return DEC;}
"+" {return '+';}
"-" {return '-';}
"*" {return '*';}
"/" {return '/';}
"%" {return '%';}
"^" {return '^';}
. {return yytext[0];}
\n { return '\n'; }

%%

int yywrap()
{
return 1;
}
