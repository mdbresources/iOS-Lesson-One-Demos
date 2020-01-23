/*:
 
 # Miscellaneous Basics
 
 #### Documentation & Commenting
 
 * Add comments in your code to explain complex code
 * CMD + Option + / will generate a documentation header for your method, class, or variable. Just go and fill it out to describe what that method, class, or variable does!
 
 */

// single line comment
/* multi
 line
 comment
 */

/// <#Description#>
///
/// - Parameter max: <#max description#>
func makeAThing(max: String) {
    
}
/*:
 #### Printing
 
 * Printing to the console can help you debug!
 * You can use string interpolation to include the string representation of another variable in a string
 * the print() function automatically adds a line break at the end!
 
 */
var score = 20
//string interpolation
print("Hey, my score is \(score)!")
/*:
 #### Type Conversion
 */

var myDouble = 52.4

type(of: myDouble)
var myInt = Int(myDouble)
print(myInt)
var myString = String(myDouble)
print(myString)

/*:
 #### Operators
 */

// Assignment Operator (=)
var someVariable = 20

// Arithmetics Operators (+ - * /)
let x = 10
let y = 20
var z = x * y
z = x + y
z = y/x
z = y - x
print(z)

// Remainder Operator (%)

let remainder = 254 % 10
print("remainder is \(remainder)")

// Comparison Operators (== != < > <= >=)

// = is assigning
var name = "Captain America"
// == is "are these two things equal??"
print(name == "Captain America")

// != is "are these two things unequal??"
print(name != "Captain America")
print(name != "Tony Stark")


// Logical Operators (&& ||)
let o = 10
let r = 20

print((o > r) && (r > o)) // and
print((o > r) || (r > o)) // or 
