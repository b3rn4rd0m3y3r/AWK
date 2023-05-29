BEGIN {
    FS = " "
    regex1 = /\s[1]/
    }
{
    arr1 = match($0, regex1)
    tam = length($0)
    esq = substr($0,tam-14)
    nome = substr($0,0,tam-14)
    crc = substr($0,arr1,1)
    print nome "|" arr1 "|" substr($0,arr1,99) "|" crc
}
END {}
