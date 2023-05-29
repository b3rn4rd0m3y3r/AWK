BEGIN {
    FS = ""
    regex = /\.txt$/
    }
{
    arr = match($0, regex)
    tam = length($0)
    esq = substr($0,tam-14)
    nome = substr($0,0,tam-14)
    print nome "|" substr(esq,0,11)
}
END {}
