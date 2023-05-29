BEGIN {

    regex = /\.txt$/
    }
{
    match($0, regex)
    esq = substr($0,RSTART)
    print RSTART "-" esq
}
END {}
