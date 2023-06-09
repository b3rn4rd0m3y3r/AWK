#!/usr/bin/awk -f
BEGIN {
    FS = " "
    printf("Content-type: text/html\n\n")
    print "<h1>AWK</h1>"
    print ENVIRON["QUERY_STRING"]
    }
{
    print $0
    }
END {}
