# Generate the sample txt file using the following command:
cat > sample.txt <<EOF
apple
banana
apple
cherry
banana
banana
date
EOF

# Find all lines containing "banana"
grep 'banana' sample.txt
# Find lines that do not contain "banana"
grep -v 'banana' sample.txt
# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banana, cherry, date)
#I had to sort it first for uniq to work
sort sample.txt | uniq 
# Run the command man uniq. Use what you found to extend the uniq comment to count the occurrence of each word
#I had to sort it first for uniq to work
sort sample.txt | uniq -c
#Combine grep and uniq to count occurences of lines containing "banana"
grep 'banana' sample.txt | uniq -c
