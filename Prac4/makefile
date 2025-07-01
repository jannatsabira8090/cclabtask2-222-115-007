

input = input.txt
output = output.txt

main:
	flex prac4.l
	gcc lex.yy.c -o prac4.exe
	.\\prac4.exe < $(input) > $(output)
