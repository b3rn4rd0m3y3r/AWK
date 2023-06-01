BEGIN { FS = ";"; }
NR > 1 {
    printf("%4s%2s%2s|%13s|%9.2f\n", $3,$4,$5,$8,$9*$10);
}
END {}
