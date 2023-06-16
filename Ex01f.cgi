#!/usr/bin/awk -f
BEGIN {
    FS = " "
    printf("Content-type: text/html\n\n")
    print "<meta charset=\"UTF-8\">"
    print "<h1>AWK</h1>"
    printf("%s<br>",ENVIRON["QUERY_STRING"])
    lin = 0
    printf("<table border=1>")
    printf("<th>%s</th><th>%s</th><th>%s</th>", "No.da Nota", "Data da Nota","Código INTL")
    while( getline line < "./Faturas.dat" ){
        split(line,vars,";")
        if( lin > 0){
            printf("<tr>")
            printf("<td>%s</td><td>%s</td><td>%s</td>", vars[1], vars[2],vars[8])
            printf("</tr>")
            }
        lin++
        }
    printf("</table>")
    }
{
    print $0
    }
END {}
