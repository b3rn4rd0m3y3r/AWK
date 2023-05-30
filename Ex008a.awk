BEGIN { FS = "[., ]"; H = 0; }
{
    S0 = ($4 ~ /^[[:digit:]]/ && H == 0);
    S1 = ($5 ~ /^[[:digit:]]/ && H == 0);
    S2 = ($6 ~ /^[[:digit:]]/ && H == 0);
    S3 = ($7 ~ /^[[:digit:]]/ && H == 0);
    S = S0*1+S1*2+S2*4+S3*8
    print $4 "|" $5 "|" $6 "|" $7 "|" S
    switch(S){
        case 7:
            print $4
            break
        case 8:
            print $7
            break
        case 12:
            print $6
            break
        case 14:
            print $5
            break
        case 15:
            print $7
            break
        }
}
END {}
