BEGIN {
    FS = ";"
    printf "%-30s | %-10s\n", "Nome", "Tel"
    }
{
    printf "%-30s | %10s\n", $2, $4
}
END {}
