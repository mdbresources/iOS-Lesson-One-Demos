/*:
 
 # Functions & Control Flow
 
 ### What are functions?
 
 Straight from the Apple Docs - "Functions are self-contained chunks of code that perform a specific task."
 
 **Scenario:** Let's say we're writing a tax calculator app and we want to write some code to help us. Let's organize our code by functionality - let's organize it into functions! Over the course of this playground we'll see a bunch of different types of functions
 
*/
 
/*:
 #### No arguments, no return value
*/

func printHelloWorld() {
    print("Hello World!")
}

printHelloWorld()
/*:
 #### 1 argument, no return value
 
 */


/// Prints the amount you earned this month
///
/// - Parameter earned: amount of money I made this month
func printEarning(_ earned: Double) {
    print("I earned \(earned) this month!")
}

printEarning(0.0)
/*:
 #### 1 argument, 1 return value
 */

/// This function calculates tax on a given income
///
/// - Parameter amount: The income a user makes (note the underscore)
/// - Returns: The amount of tax they have to pay
/// What is this underscore for?
func calcTax(_ amount: Double) -> Double {
    if (amount > 1000) {
        return amount * 0.0875
    } else {
        return 0
    }
}

calcTax(23)

/*:
#### Multiple arguments, 1 return value
 */
/// Calculates the profit given an array of earnings and an array of expenses
///
/// - Parameters:
///   - earnings: array of earnings
///   - expenses: array of expenses
/// - Returns: total profit
func calcTotalIncome(_ earnings: [Double], _ expenses: [Double]) -> Double {
    // Fix this
    return 20
}

//Earnings per month for past 12 months for the user
var earnings = [1220.50, 2400, 1600, 100, 500, 200, 700, 233, 900, 1000, 1222, 1234]

//Expenses per month for past 12 months for the user
var expenses = [50, 200.5, 300, 45, 5, 500, 1200, 2300, 900, 300, 112, 12]

calcTotalIncome(earnings, expenses)

