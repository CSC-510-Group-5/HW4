#!/usr/bin/env gawk -f 
#Compute and print the average age of passengers.
BEGIN { FS = ","
    OFS = "\t"
    sum = 0
    i = 0} 
{
    if ($7 ~ /^[0-9]+$/) {
        i += 1
        sum += $7
    }
}

END { 
    print "Average age: ", sum / i
 }