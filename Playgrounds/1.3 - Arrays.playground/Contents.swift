/*:
 
 #### What are arrays?
 
 An array is an ordered collection of data. Each value in an array is automatically assigned an index (starting from 0). This graphic from the Apple Docs shows it best:
 
 ![Array image](array.png)
 
 */

// Make an empty array (of strings):
var fastFoodLine = [String]()

// Add some superheroes to our fastFoodLine
fastFoodLine.append("Captain America")
fastFoodLine.append("Hulk")
fastFoodLine.append("Tony Stark")
fastFoodLine.append("Thor")

// We could also accomplish the same task by simply assigning fastFoodLine to an array literal
fastFoodLine = ["Captain America", "Hulk", "Tony Stark", "Thor"]

// How many people are in the line?
let numPeople = fastFoodLine.count

// What if Spider-Man wants food too?
fastFoodLine.append("Spider-Man")

// What is Spider-Man's place in line?
let i = fastFoodLine.index(of: "Spider-Man")

print(i!)
// Spider-Man just got kicked out of the MCU. Remove him from the line.
fastFoodLine.remove(at: i!) // Force Unwrapping

// Is the Hulk still waiting for his food?
let stillWaiting = fastFoodLine.contains("Hulk")










