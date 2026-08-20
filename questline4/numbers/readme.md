Numbers

Two number-based programming challenges were solved:

Palindrome Number Integer to Roman Problems Solved

1.Palindrome Number
Approach:

I convert the given integer into a string and then reverse the string using Python slicing. I compare the original string with the reversed string. If both are the same, the number is a palindrome, so I return True. Otherwise, I return False. This approach makes the palindrome check simple by using string conversion and slicing.

Time Complexity: O(n) Space Complexity: O(n)

where n is the number of digits in the number.

2.Integer to Roman
Approach:

I store the seven Roman numeral symbols and their values in descending order. For each value, I check whether the given number is greater than or equal to that value. If it is, I add the corresponding Roman symbol to the result and subtract the value from the number. I continue this process until the number becomes zero. The values are stored in descending order so that the largest possible Roman numeral is selected first.

For example, for 58:

50 → L 8 → VIII

Result → LVIII

Time Complexity: O(1) Space Complexity: O(1)

The number is limited to 1–3999, and the list of Roman numeral values contains a fixed number of elements.

Conclusion

Both problems demonstrate different approaches to solving number-based programming challenges. For Palindrome Number, I used string conversion and reversal to compare the number with its reverse. For Integer to Roman, I used a greedy approach by repeatedly selecting the largest Roman numeral value that could be subtracted from the given number.

Both solutions were successfully submitted and accepted on LeetCode.

Files palindrome_number.png — Accepted LeetCode submission for Palindrome Number. integer_roman.png — Accepted LeetCode submission for Integer to Roman. algorithm_explanation.jpg — Handwritten explanation containing the reasoning, algorithms, alternative approaches, and complexity analysis for both problems.
