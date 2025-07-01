

input = input.txt
output = output.txt

main:
	flex prac3.l
	gcc lex.yy.c -o prac3.exe
	.\\prac3.exe < $(input) > $(output)
