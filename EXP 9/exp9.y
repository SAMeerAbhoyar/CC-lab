%{
#include <stdio.h>
#include <math.h>
int yyerror(char *s);
int yylex(void);
%}
%token NUMBER INC DEC
%left '+' '-'
%left '*' '/' '%'
%right '^'

%%
input: expr '\n' {printf("Result = %d\n", $1);}
    ;

expr:NUMBER {$$ = $1;}
    | expr '+' expr {$$ = $1 + $3;}
    | expr '-' expr {$$ = $1 - $3;}         
    | expr '*' expr {$$ = $1 * $3;}
    | expr '/' expr {$$ = $1 / $3;}
    | expr '%' expr {$$ = $1 % $3;}
    | expr '^' expr {$$ = pow($1, $3); }
    | NUMBER INC {$$ = $1 + 1;}
    | NUMBER DEC {$$ = $1 - 1; }
    ;
%%
int main()
{
printf("Enter expression: ");
yyparse();
return 0;
}
int yyerror(char *s)
{
printf("Invalid expression\n");
return 0;
}
