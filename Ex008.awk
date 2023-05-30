BEGIN { FS = "[., ]"; H = 0; }
$5 ~ /^[[:digit:]]/ && H == 0 { printf("%d",$5); H = 1; }
$6 ~ /^[[:digit:]]/ && H == 0 { printf("%d",$6); H = 1; }
$7 ~ /^[[:digit:]]/ && H == 0 { printf("%d",$7); H = 1; }
{ print ""; H = 0;}
END {}
