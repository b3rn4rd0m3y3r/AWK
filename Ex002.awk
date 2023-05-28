BEGIN { a = 4
b = 15
c = a + b
printf("Soma: %d\n",c)
}
{
printf("Linha lida: %s\n", $0)
}
END { print "Acabei\n" }
