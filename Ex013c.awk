BEGIN {
    FS = " "
    }
$2 == "LET" {
    arr[$1] = "Atribuição"
    }
$2 == "PRINT" {
    arr[$1] = "Impressão"
    }
$2 == "FOR" {
    arr[$1] = "Inicio de Loop"
    }
$2 == "NEXT" {
    arr[$1] = "Fim de Loop"
    }
END { for( item in arr ){
        print item "|" arr[item]
        }
}
