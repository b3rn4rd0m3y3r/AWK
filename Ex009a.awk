BEGIN { FS = ";"; }
{
    printf("%4s%2s%2s\n", $3,$4,$5);
}
END {}
