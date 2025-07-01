%option noyywrap

%{
#include <stdio.h>
%}

digit       [0-9]
letter      [a-zA-Z_]
id          {letter}({letter}|{digit})*
int_num     {digit}+
float_num   {digit}+"."{digit}*([eE][-+]?{digit}+)?
char_const  \'([^\\]|\\.)\'
string      \"([^\\"]|\\.)*\"

%%

"int"                   { printf("%s -> KEYWORD\n", yytext); }
"float"                 { printf("%s -> KEYWORD\n", yytext); }
"char"                  { printf("%s -> KEYWORD\n", yytext); }
"double"                { printf("%s -> KEYWORD\n", yytext); }
"for"                   { printf("%s -> KEYWORD\n", yytext); }
"return"                { printf("%s -> KEYWORD\n", yytext); }

{float_num}             { printf("%s -> FLOAT_LITERAL\n", yytext); }
{int_num}               { printf("%s -> INT_LITERAL\n", yytext); }
{char_const}            { printf("%s -> CHAR_LITERAL\n", yytext); }
{string}                { printf("%s -> STRING_LITERAL\n", yytext); }

"=="|"<="|">="|"!="     { printf("%s -> RELATIONAL_OP\n", yytext); }
"<"|">"|"="             { printf("%s -> ASSIGN/RELATIONAL_OP\n", yytext); }
"++"|"--"|"+"|"-"|"*"|"/" { printf("%s -> ARITHMETIC_OP\n", yytext); }

"&"                     { printf("%s -> ADDRESS_OP\n", yytext); }
";"                     { printf("%s -> SEMICOLON\n", yytext); }
","                     { printf("%s -> COMMA\n", yytext); }
"("                     { printf("%s -> LPAREN\n", yytext); }
")"                     { printf("%s -> RPAREN\n", yytext); }
"{"                     { printf("%s -> LBRACE\n", yytext); }
"}"                     { printf("%s -> RBRACE\n", yytext); }

{id}                    { printf("%s -> IDENTIFIER\n", yytext); }

[ \t\n]+                { /* skip whitespace */ }
. { /* ignore unknown characters */ }


%%

int main()
{
    printf("Enter code (Ctrl+D to finish):\n");
    yylex();
    return 0;
}
