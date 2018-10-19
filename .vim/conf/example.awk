BEGIN {
    FS="\t";
    OFS="\t";
    RS="\n"
    ORS="\n"
}
{
	line= $1 "_" $2
    for (i=3; i<=NF; i++) line= line "\t" $i;
    print line
}
END {
    print "Done!"
}
