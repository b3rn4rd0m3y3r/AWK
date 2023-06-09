BEGIN {
    FS = " "
    }
$2 == "LET" {
    print $1 " Atribuição"
    }
$2 == "PRINT" {
    print $1 " Impressão"
    }
$2 == "FOR" {
    print $1 " Inicio de Loop"
    }
$2 == "NEXT" {
    print $1 " Fim de Loop"
    }
END {}
