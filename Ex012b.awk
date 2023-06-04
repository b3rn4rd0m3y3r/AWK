BEGIN {
    FS = ";"
    printf("%6s|%16s|%11s|%-9s\n", ".Id.", "No.IP", "Data Inv", "..Hora..") > "AccData.txt"
    }
NR > 1 {
    Hora_Lida = $6
    split($6, ArrHr, ":")
    sub("\/01\/", "/Jan/", $3)
    sub("\/02\/", "/Fev/", $3)
    sub("\/03\/", "/Mar/", $3)
    sub("\/04\/", "/Abr/", $3)
    sub("\/05\/", "/Mai/", $3)
    sub("\/06\/", "/Jun/", $3)
    sub("\/07\/", "/Jul/", $3)
    sub("\/08\/", "/Ago/", $3)
    sub("\/09\/", "/Set/", $3)
    sub("\/10\/", "/Out/", $3)
    sub("\/11\/", "/Nov/", $3)
    sub("\/12\/", "/Dez/", $3)

    printf("%6s|%16s|%11s|%-2s|%-2s\n", $1,$2,$3,ArrHr[1],ArrHr[2])  > "AccData.txt"
}
END {}
