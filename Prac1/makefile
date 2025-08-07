input = input.txt
output = output.txt

main:
	flex prac1.l
	gcc lex.yy.c -o prac1.exe
	./prac1.exe < $(input) > $(output)
