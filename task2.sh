echo 'Line with banana'
# Output lines with numbers, filter for banana
cat -n sample.txt | grep banana
echo 'Line without banana'
# Output lines with numbers, filter for lines without banana
cat -n sample.txt | grep -v banana
echo 'Unique lines'
# Output lines with numbers, sort by second field, filter for unique skipping line number
cat -n sample.txt | sort -k2 | uniq -f1
echo 'Unique line counts'
# Output lines, sort, count unique lines
cat sample.txt | sort | uniq -c
echo 'Unique line counts for banana'
# Output lines, sort, filter for banana, count unique lines
cat sample.txt | grep banana | sort | uniq -c