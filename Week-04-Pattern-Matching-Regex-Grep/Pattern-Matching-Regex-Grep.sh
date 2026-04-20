#!/bin/bash

echo "=============================="
echo " WEEK 4: PATTERN MATCHING LAB "
echo "=============================="

# Step 1: Create sample file
echo -e "\nCreating sample.txt file...\n"

cat <<EOL > sample.txt
hello world
hello biswajit
Error found
warning message
abc
abbc
abbbc
color
colour
123
4567
hello again hello
HELLO WORLD
test@example.com
file.txt
data.csv
EOL

echo "Sample file created!"
echo "------------------------------"
cat sample.txt
echo "------------------------------"


# 1. Basic grep
echo -e "\n1. Lines containing 'hello'"
grep "hello" sample.txt

# 2. Start of line ^
echo -e "\n2. Lines starting with 'Error'"
grep "^Error" sample.txt

# 3. End of line $
echo -e "\n3. Lines ending with 'world'"
grep "world$" sample.txt

# 4. Dot (.)
echo -e "\n4. Pattern 'h.llo'"
grep "h.llo" sample.txt

# 5. Star (*)
echo -e "\n5. Pattern 'ab*c'"
grep "ab*c" sample.txt

# 6. Square brackets []
echo -e "\n6. Pattern 'gr[aeiou]p' (example test)"
echo -e "grap\ngrep\ngrip\ngrop\ngrup" | grep "gr[aeiou]p"

# 7. Range [0-9]
echo -e "\n7. Numbers using [0-9]"
grep "[0-9]" sample.txt

# 8. Not digit [^0-9]
echo -e "\n8. Non-digit lines"
grep "[^0-9]" sample.txt

# 9. Escape dot \.
echo -e "\n9. Lines containing '.txt'"
grep "\.txt" sample.txt

# 10. BRE repetition \{n,m\}
echo -e "\n10. BRE repetition a\\{2,3\\}"
echo -e "a\naa\naaa\naaaa" | grep "a\{2,3\}"

# 11. Grouping \( \)
echo -e "\n11. BRE grouping (ab)*"
echo -e "ab\nabab\nababab\nabc" | grep "\(ab\)*"

# 12. ERE + (one or more)
echo -e "\n12. ERE: ab+c"
grep -E "ab+c" sample.txt

# 13. ERE ? (optional)
echo -e "\n13. ERE: colou?r"
grep -E "colou?r" sample.txt

# 14. ERE {n,m}
echo -e "\n14. ERE: [0-9]{3}"
grep -E "[0-9]{3}" sample.txt

# 15. OR operator |
echo -e "\n15. ERE: cat|dog"
echo -e "cat\ndog\nbird" | grep -E "cat|dog"

# 16. Character classes
echo -e "\n16. Character class [[:digit:]]"
grep "[[:digit:]]" sample.txt

echo -e "\n17. Character class [[:alpha:]]"
grep "[[:alpha:]]" sample.txt

# 17. Uppercase letters
echo -e "\n18. Uppercase lines"
grep "[[:upper:]]" sample.txt

# 18. Email pattern (basic)
echo -e "\n19. Email pattern"
grep -E "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+" sample.txt

# 19. Backreference (hello repeated)
echo -e "\n20. Backreference: repeated 'hello'"
grep "\(hello\).*\1" sample.txt

# 20. File extensions
echo -e "\n21. Find .txt files"
grep "\.txt$" sample.txt

echo -e "\n22. Find .csv files"
grep "\.csv$" sample.txt

# 21. Combined example
echo -e "\n23. Lines with 4-digit numbers"
grep -E "[0-9]{4}" sample.txt

echo -e "\n=============================="
echo "   END OF WEEK 4 PRACTICE"
echo "=============================="