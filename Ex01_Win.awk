BEGIN { FS = "[ ]" }
{ match($0,/\.txt/); print substr($0,RSTART-10,10) "-" substr($0,0, RSTART-11) }