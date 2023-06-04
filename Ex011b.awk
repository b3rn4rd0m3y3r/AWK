BEGIN {
    FS = "[;,:]"
    printf("%6s|%16s|%11s|%-9s\n", ".Id.", "No.IP", "Data Inv", "..Hora..")
    Data_ant = "9999/00/00"
    Hora_ant = "99_0"
    Soma = 0
    }
NR > 1 {
    Data_Lida = $4
    Hora_Lida = sprintf("%02i_%1d",($6-7),$7/10)
    if( Hora_Lida != Hora_ant ){
        printf("Acessos %s %s: %d\n",Data_ant, Hora_ant, S) > "HoraFile.txt"
        print "______|________________|____________|_________"
        Hora_ant = Hora_Lida
        S = 0

        }
        if( Data_Lida != Data_ant ){
            Data_ant = Data_Lida
            }
    S++;
    printf("%6s|%16s| %11s|%02i_%1d\n", $1,$2,Data_Lida,$6-7,$7/10);
    }
END {
    printf("Acessos %s %s: %d\n",Data_ant, Hora_ant, S) > "HoraFile.txt"
    }
