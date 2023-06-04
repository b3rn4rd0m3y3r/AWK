BEGIN {
    FS = ";"
    printf("%6s|%16s|%11s|%-9s\n", ".Id.", "No.IP", "Data Inv", "..Hora..");
    }
NR > 1 {
    Hora_Lida = $6
    split($6, ArrHr, ":")
    printf("%6s|%16s|%11s|%-2s|%-2s\n", $1,$2,$4,ArrHr[1],ArrHr[2]);
}
END {}
