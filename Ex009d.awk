BEGIN {
    FS = ";"
    printf("%-8s|%4s|%4s|%-13s|%9s\n", "Data Inv", "Nota", "Item", "Cod.Produto", "Subtotal");
    }
NR > 1 {
    printf("%4s%2s%2s|%4s|%4s|%13s|%9.2f\n", $3,$4,$5,$1,$7,$8,$9*$10);
}
END {}
