BEGIN { FS = ";"; }
NR > 1 {
    printf("%4s%2s%2s|%13s\n", $3,$4,$5,$8);
}
END {}
