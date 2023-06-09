BEGIN {
    FS = " "
    }
$2 == "LET" {
    arr[$1]["type"] = "Atribuição"
    arr[$1]["var"] = "Variável " $3
    }
$2 == "PRINT" {
    arr[$1]["type"] = "Impressão"
    }
$2 == "FOR" {
    arr[$1]["type"] = "Inicio de Loop"
    arr[$1]["var"] = "Variável " $3
    }
$2 == "NEXT" {
    arr[$1]["type"] = "Fim de Loop"
    arr[$1]["var"] = "Variável " $3
    }

END { for( item in arr ){
        for( info in arr[item] ){
        print item "|" arr[item][info]
        }
    print "___________________"
    }
}
