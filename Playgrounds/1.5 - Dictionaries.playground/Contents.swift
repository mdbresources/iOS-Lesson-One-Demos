/*:
 
 #### What is a dictionary?
 
 **Straight from the Apple Docs:** - "A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering"
 
 **Simply put:** - dictionaries are an unordered list of entries, where each entry has a key and a value.
 
 This is best depicted by this graphic from the Apple Docs:
 
 ![Dictionary image](dictionary.png)
 
 **Points to Note:**
 * Dictionaries are unordered.
 * All keys must have the same data type. All values must have the same data type.
 * Keys in dictionaries are unique - you can't store 2 entries with the same key in a dictionary.
 
 **Scenario:** Let's say we're making an app to manage our grocery store. We want to keep track of the price of each item. We can use a dictionary!

 */

//Declare and assign an empty dictionary
var itemToPrice : [String: Double] = [:]

//Add entries to our dictionary
itemToPrice["Chocolate Brownie"] = 1.99
itemToPrice["Glazed Donut"] = 0.99
itemToPrice["Apple Pie"] = 5.99
itemToPrice["Chocolate Brownie"] = 2

//We could also have begun with a populated dictionary instead of an empty one by using a literal
var itemToPrice2 = ["Chocolate Brownie": 1.99,
                    "Glazed Donut": 0.99,
                    "Apple Pie": 5.99]

//How do we check if our dictionary has values in it?
itemToPrice.isEmpty

//What if we want to get an array of just all the items?
type(of: itemToPrice.keys)
let items = Array(itemToPrice.keys)

//What if we want to check if our dictionary has a value for "Glazed Donut"?
print(itemToPrice.keys.contains("Glazed Donut"))
print(itemToPrice["Glazed Donuts"] != nil)

//How do we get the value in our dictionary for "Glazed Donut"?


//How do we get the number of entries in our dictionary?
let numEntries = itemToPrice.count
print("Our grocery store sells \(numEntries) different types of items")

