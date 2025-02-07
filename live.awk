# Report the frequencies with which different classes survived titanic.
BEGIN { FS = "," }  # Set the field separator to comma (CSV format)
NR > 1 { class_survived[$3] += $2; class_count[$3]++  }  # Count survived passengers per class and total
END {
    print "Frequencies with which different classes survived titanic:"
    for (class in class_count) {
        print "Class", class, ":", class_survived[class] /class_count[class]
    }
}