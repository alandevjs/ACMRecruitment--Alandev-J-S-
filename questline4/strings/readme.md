String Algorithms

String algorithms are used to process, compare, and manipulate strings efficiently. Both problems focus on different ways of working with strings.

Problems Solved

1.Valid Palindrome
I remove spaces, punctuation, and other non-alphanumeric characters from the string and convert all remaining characters to lowercase. I then reverse the cleaned string using slicing and compare it with the original cleaned string. If both are the same, I return True, otherwise I return False.

Time Complexity: O(n) Space Complexity: O(n)

2.Zigzag Conversion
I create a separate string for each row and place each character into the current row. I move down through the rows and then reverse the direction when I reach the bottom. When I reach the top, I change the direction again. After all characters are placed, I join all the rows to get the final converted string. I also handle the case where numRows is 1 by directly returning the original string.

Time Complexity: O(n) Space Complexity: O(n)

Conclusion

Both problems demonstrate different string algorithm techniques. Valid Palindrome uses string cleaning and reversal, while Zigzag Conversion uses row-based storage and directional movement. Both solutions were successfully submitted and accepted on LeetCode.

Files

valid_palindrome.png — Accepted LeetCode submission for Valid Palindrome. zigzag_conversion.png — Accepted LeetCode submission for Zigzag Conversion. algorithm__explanation_1 and 2.jpeg — Handwritten algorithm explanation for both problems.
