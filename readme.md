Homework SimpleCalc
- Write a console "calculator" program

user can enter a number, hit return
user can enter an operation (add, sub, mul, div, mod), then return
user can enter a number, hit return
program calculates the result
- Add a few new (multi-operand) operations in

"count": count the number of input
10 4 25 17 5 count => 5
"avg": average all the inputs
2 4 6 8 10 avg => 6
any of these can take any number of inputs
"fact": calculate factorial
5 fact => 120
fact can only accept one number
- Use readLine for standard input reading

let response = readLine(stripNewline: true)!
- Error handling is up to you

Example:

$ calc
Enter an expression separated by returns:
15
+
27
Result: 42
