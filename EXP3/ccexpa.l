%{
#include <stdio.h>
int count=0;
%}

%%
("a"|"A").* {count++;}
.|\n {ECHO;}
%%

int main(){
	printf("Enter something: ");
	yylex();
	printf("number of a/A are: %d\n",count);
	return 0;
	}
	
int yywrap(){
	return 1;
	}
