BEGIN {
    FS = ";"
    printf("%6s|%16s|%11s|%-9s\n", ".Id.", "No.IP", "Data Inv", "..Hora..");
    }
NR > 1 {
    printf("%6s|%16s|%11s|%-9s\n", $1,$2,$4,$6);
}
END {}
