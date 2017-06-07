## Bank OCR Challenge

This challenge is a start to complete the Bank OCR Code Kata Challenge. Currently, I've completed step one of the multiple steps in the challenge.

These are the components I've created thus far:

* `Account` - encapsulates the numerical account number
* `AccountViewer` - displays each individual account's number within a collection
* `DigitRecognizer` - contains the character recognition - characters to numerical digits
* `AccountParser` - takes a file and parses it into one string
* `AccountCleaner` - encapsulates the logic behind cleaning the characters to format them in a way the `AccountReader` can convert
* `AccountReader` - converts characters into numerical digits and contains a collection of `Account`'s
