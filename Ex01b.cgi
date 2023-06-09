#!/usr/bin/awk -f
BEGIN {
    FS = " "
    printf("Content-type: text/html\n\n")
    print "<h1>AWK</h1>"
    printf("%s<br>",ENVIRON["QUERY_STRING"])

    while( getline line < "./Faturas.dat" ){
        print line
        }
    }
{
    print $0
    }
END {}
