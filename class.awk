# Count and print the number of passengers per class.
BEGIN { FS = "," }  # Set the field separator to comma (CSV format)
NR > 1 { class_survived[$3]++ }  # Increment count for each class (Class is $3) and skips the first line
END {
    print "Passenger count per class:"
    for (class in class_count) {
        print "Class", class, ":", class_count[class]
    }
}
