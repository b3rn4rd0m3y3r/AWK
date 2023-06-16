#!/usr/bin/awk -f
BEGIN {
    FS = " "
    printf("Content-type: text/html\n\n")
    print "<h1>AWK</h1>"
    printf("%s<br>",ENVIRON["QUERY_STRING"])

    while( getline line < "./Faturas.dat" ){
        split(line,vars,";")
        printf("%s %s %s<br>", vars[1], vars[2],vars[3])
        }
    }
{
    print $0
    }
END {}
