Greedy Algorithms

A greedy algorithm makes the best available choice at each step with the goal of obtaining an optimal overall result. For both problems, the best choice helps preserve resources for future decisions.

Problems Solved

1.Lemonade Change Approach:
The customers pay with $5, $10, or $20, while the lemonade costs $5.

I keep track of the number of $5 and $10 bills available.

If the customer gives $5, I keep it. If the customer gives $10, I give back one $5 if available. If the customer gives $20, I first try to give one $10 and one $5. If that is not possible, I try to give three $5 bills. If the required change cannot be given, I return False. This is a greedy approach because I choose the available bills that allow the transaction to continue while preserving smaller bills for future customers.

Time Complexity: O(n) Space Complexity: O(1)

2.Assign Cookies Approach:
I sort both the children's greed factors and the cookie sizes.

I use two pointers:

i points to the current child. j points to the current cookie. For every cookie:

If the cookie is large enough for the current child, I assign it and move both pointers. Otherwise, the cookie is too small, so I move only the cookie pointer. The number of satisfied children is stored in i, which is returned at the end.

This is greedy because I use the smallest cookie that can satisfy the current child, saving larger cookies for children who may need them.

Time Complexity: O(n log n + m log m) Space Complexity: O(1) excluding the sorting implementation.

Conclusion Both problems demonstrate the Greedy Algorithm approach, where the best available choice is made at each step while preserving resources for future decisions. Both solutions were successfully submitted and accepted on LeetCode.

Files lemonade_change.png — Accepted LeetCode submission for Lemonade Change.

assign_cookies.png — Accepted LeetCode submission for Assign Cookies.

algorithm_explanation_1.jpeg to algorithm_explanation_4.jpeg — Handwritten algorithm explanation.
