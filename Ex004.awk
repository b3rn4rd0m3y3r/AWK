BEGIN {
    FS = ";"
    }
{
    printf "%40s | %10s\n", $2, $4
}
END {}
