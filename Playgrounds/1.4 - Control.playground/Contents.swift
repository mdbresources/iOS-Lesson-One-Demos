/*:
 ### Control Flow
 #### If Statements
 If statements execute code depending on a condition. Else is like a "catch all"
*/

var hungry = true
if hungry {
    print("Im hungry")
} else {
    print("Not hungry")
}

var bored = false
if hungry && bored {
    print("I really should eat")
} else if bored {
    print("Im gonna eat")
} else if hungry {
    print("Im hungry")
} else {
    print("Meh maybe ill have food later")
}

/*:
 Use `if let` and `guard` to safely unwrap optionals
 */

var nonExistent: Int?
if let existence = nonExistent {
    print("I exist")
} else {
    print("I don't exist")
}

var existent: Int? = 3
if let existence = existent {
    print("I exist and have value \(existence)")
} else {
    print("I don't exist")
}

/*:
 #### Switch Statements
 Switch statements are used for finite sets of values a variable can take on. Default acts as a "catch-all"
 */
let x = 1
switch x {
case 1:
    print("I am number 1")
case 2:
    print("I am number 2")
default:
    print("I can't count that high")
}

/*:
 
 ### What are For Loops?
 
 **Straight from the Apple Docs:** "You use the for-in loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string."
 
 **Simply Put:** You can use for loops to execute a chunk of code multiple times, for different values of one or more variables. The examples explain it best. Take a look.
 */
/*:
 #### Over a Range of Numbers
 */

for i in 1..<10 {
    print(i)
}
/*:
 #### Over an Array
 */

var colleges = ["UC Berkeley", "Stanfurd", "Caltech", "USC", "UCLA"]

for uni in colleges {
    if uni.prefix(1) == "U" || uni.prefix(1) == "C" {
        print(uni)
    }
}
/*:
 #### Over a Dictionary
 */

var nameToSchool = ["Buzz": "UC Berkeley",
                    "Mr. Potato Head": "Stanfurd",
                    "Woody": "Caltech"]

for (name, uni) in nameToSchool {
    print("\(name) goes to \(uni)")
}

/*:
 Arrays and dictionaries can contain optionals too. Notice the use of guard to safely unwrap values
 */

var dangerousArray: [Int?] = [1, nil, 3, nil, 5, nil, 7]
for val in dangerousArray {
    guard let safeVal = val else { continue }
    print(safeVal)
}



/*:
 
 ### What are While Loops?
 
 **Straight from the Apple Docs:** "A while loop performs a set of statements until a condition becomes false. These kinds of loops are best used when the number of iterations is not known before the first iteration begins."
 
 **Simply Put:** You can use while loops to execute a chunk of code multiple times, for different values of one or more variables.
 */

var arr1 = [1, 2, 3, 5, 7]
var arr2 = [-1, 0, 4, 6, 8]
var result:[Int] = []

var i = 0, j = 0
while i != arr1.count && j != arr2.count {
    if arr1[i] < arr2[j] {
        result.append(arr1[i])
        i += 1
    } else {
        result.append(arr2[j])
        j += 1
    }
}

for a in i ..< arr1.count {
    result.append(arr1[a])
}

for b in j ..< arr2.count {
    result.append(arr2[b])
}
result



