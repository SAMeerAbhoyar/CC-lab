%{
#include <stdio.h>
%}

%%
pen { printf("Found the word pen");}
.|\n {}
%%

int main(){
	printf("Enter a Paragraph: ");
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}
