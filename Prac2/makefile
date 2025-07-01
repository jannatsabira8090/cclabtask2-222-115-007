

input = input.txt
output = output.txt

main:
	flex prac2.l
	gcc lex.yy.c -o prac2.exe
	.\\prac2.exe < $(input) > $(output)
