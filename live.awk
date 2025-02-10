# Comma delimiter
BEGIN { FS="," }
# Skip first line, increment sum for the survivors for each class number
NR > 1 && $2 > 0 { survive_class[$3]++ }
NR > 1 { class_count[$3]++ }
END {
    # Output each of the classes and their survivor counts
    for (class in survive_class) {
        print "Number Survived per Class " class ": " survive_class[class]
        print "Total Number in Class " class ": " class_count[class]
        x  = int(survive_class[class]/class_count[class]*100)
        print "Percentage Survived " x "%"
    }
}

# awk -f live.awk titanic.csv