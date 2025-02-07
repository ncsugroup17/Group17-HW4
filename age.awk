#Compute the average age of the people in the file
BEGIN { FS = "," }  # Set the field separator to comma (CSV format)
NR > 1 { age_sum += $7; age_count++ }  # Sum ages and count
END {
        print "Average age", ":", age_sum / age_count
}