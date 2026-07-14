%{
#include <stdio.h>
int count = 0;
%}

%%
"//".* { count++;}
.|\n {}
%%

int main(){
	printf("Enter a Paragraph: ");
	yylex();
	printf("The Frequency of single line comment is : %d\n", count);
	return 0;
}

int yywrap(){
	return 1;
}
