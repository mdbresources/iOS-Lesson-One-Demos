
/*:
 
 ### What are classes & structs?
 
 Straight from the Apple Docs - "Classes and structures are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your classes and structures by using exactly the same syntax as for constants, variables, and functions."
 
 
 **Scenario:** Let's say we're writing a game app. How do we represent players, who possess both data and functionality? - We use classes!
 
 */

/*:
 
 ### Classes
 
 In Object Oriented Programming (OOP), they are used to represent real world objects. Consider a scenario in which you are developing a game. You have the notion of a player, which has a score and unique identifier.
 
 Classes can inherit properties and methods from other classes, whereas structs can't.
 
 Classes are reference types, meaning if you call a function, and pass in a class, the actual instance of the class is whats passed in.
 */
class Player {
    
    var name: String
    var uid: String
    var score: Int
    
    init(uid: String, startScore: Int, name: String) {
        self.uid = uid
        self.score = startScore
        self.name = name
    }
    
    func takeTurn() {
        self.score += 1
    }
    
    func getScore() -> Int {
        return self.score
    }
    
    func surrender() {
        self.score = 0
    }

}

var playerOne = Player(uid: "asdl;fjlkads", startScore: 2, name: "Anmol")
playerOne.getScore()
var playerTwo = playerOne
playerTwo.surrender()
playerOne.getScore()
/*:
 
 ### Structs
 
 Structs store data about a thing. They can store multiple data types, which is why they are so useful. Use structs when you need to represent objects that don't have any behavior.
 
 Structs are value types, meaning if you call a function, and pass in a struct, the function will just be using a copy of the struct

 */
// Value Type
struct Rect {
    var width: Float?
    var height: Float?
}

// Reference Type
class Rectangle {
    var width: Float?
    var height: Float?
}

var rect = Rect(width: 20, height: 40)
var rectangle = Rectangle()
rectangle.width = 20
rectangle.height = 40

var rect2 = rect
var rectangle2 = rectangle

rect2.height = 100
rectangle2.height = 100

print(rectangle.height)
print(rect.height)

/*: ### What is the difference between classes and structs?
 
 Classes are used to represent things that have both data and behavior. Structs are used to represent things that only have data.
 */

/*:
 
 ### What are enums?
 
 Straight from the Apple Docs - "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code."
 
 **Simply Put:** When you have a small, finite list of values that a variable can take on, and each value implies a different type, setting, or meaning, use an enum!

 */

enum Direction: String {
    case North = "Northy"
    case West
    case East
    case South
}

class Car {
    func turnLeft() {
        print("turned Left")
    }
    func turnRight() {
        print("turned right")
    }
    func makeUTurn() {
        print("made U turn")
    }
    func continueStraight() {
        print("have not turned")
    }
    
    func move(_ direction: Direction) {
        switch direction {
        case Direction.North:
            continueStraight()
        case Direction.West:
            turnLeft()
        case .East:
            turnRight()
        case .South:
            makeUTurn()
        }
    }
}

var car = Car()
car.move(.North)
print(Direction.North.rawValue)

/*:
 
 ### What are extensions?
 
 **Straight from the Apple Docs** - "Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling)."
 
 
 **Put Simply** - You get to rewrite the functionality of basic Swift types, it's dope. Also, extensions enable you to clean up your code and separate large files into smaller files.

*/

import Foundation

extension Date {
    var monthString: String {
        get {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            return dateFormatter.string(from: self)
        }
    }
}

print(Date().monthString)

