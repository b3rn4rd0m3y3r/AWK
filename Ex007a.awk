BEGIN {
    FS = " "
    regex = /\s[0123][0-9][.][01][0-9][.][0-9]{4}[.]txt$/
    }
{
    arr = match($0, regex)
    tam = length($0)
    esq = substr($0,tam-14)
    nome = substr($0,0,tam-14)
    print nome "|" substr($0,arr,99)
}
END {}
