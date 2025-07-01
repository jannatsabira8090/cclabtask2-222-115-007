

input = input.txt
output = output.txt

main:
	flex prac5.l
	gcc lex.yy.c -o prac5.exe
	.\\prac5.exe < $(input) > $(output)
