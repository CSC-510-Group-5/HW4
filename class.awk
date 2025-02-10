# Comma delimiter
BEGIN { FS="," }
# Skip first line, increment sum for the class number of each line
NR > 1 { class_count[$3]++ }
END {
    # Output each of the classes and their counts
    for (class in class_count) {
        print "Class " class ": " class_count[class]
    }
}