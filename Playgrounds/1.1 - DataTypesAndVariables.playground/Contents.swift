/*:
 # Data Types & Variables
 #### How do you store & reference data?
 
 You store and reference data using variables and constants. You can change the value of a variable, but not of a constant. We use the "var" keyword for variables and "let" keyword for constants.
 
 */

let scoreToWin:Int = 500 //scoreToWin is immutable
var currentScore:Int = 20 //currentScore is mutable

/*:
 #### What are declaration & assignment?
 */

var someScore:Int // Declaration
someScore = 50 // Assignment
var myScore:Int = 50 // Declaration & Assignment
var a:Int = 10, b:Int = 20, c:Int = 30 // You can declare & assign multiple variables on the same line

/*:
 
 #### What types of data can I store?
 
 * Int - Integers
 * Float - Decimals
 * Double - Decimals (more precision)
 * Bool - true or false
 * String - ex: "hello, playground"
 * Character - ex: "a"
 
 These are the "primitive" data types
 */

var score: Int = 500
let preciseScore: Double = 530.2
let floatScore: Float = 530.2
var userLoggedIn: Bool = false
let message: String = "hello"
let char: Character = "a"

/*:
 #### Optionals
 Optional variables handle the absence of a value. `nil` means a variable has no value. When using optionals, you must unwrap them
 */
var foo:Int?
foo = nil

let num: Int? = 3
//let result = num + 4 // Compile error
let result = num! + 4 // Force Unwrapping Works Fine

/*:
 #### Never force unwrap. There are better ways to do unwrap optionals
 */

/*:
 
 ### Swift is a Strongly Typed Language
 
 That means that once you make declare a variable, you can't change what it is
 */
var x = 3
// x = 3.3 // Compile Error because Int can't be changed to a double directly
