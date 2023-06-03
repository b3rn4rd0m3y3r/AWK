BEGIN {
    FS = "[;]"
    printf("%6s|%16s|%11s|%-9s\n", ".Id.", "No.IP", "Data Inv", "..Hora..");
    Data_ant = "9999/00/00"
    }
NR > 1 {
    Data_Lida = $4
    if( Data_Lida != Data_ant ){
        print "______|________________|____________|_________"
        Data_ant = Data_Lida
        }
    printf("%6s|%16s| %11s|%-9s\n", $1,$2,Data_Lida,$6);
    }
END {}
