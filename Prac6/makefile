

input = input.txt
output = output.txt

main:
	flex prac6.l
	gcc lex.yy.c -o prac6.exe
	.\\prac6.exe < $(input) > $(output)
