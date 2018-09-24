//import UIKit

//var str = "Hello, playground"
//
//
//let coordinates = (4,6)
//let coordinates2 = (x: 3, y: 5, z: 8)
//coordinates.0
//coordinates2.x
//
//let (x1,y2,_) = coordinates2
//
//
//// **** CHALLENGE **** //
///***********************/
///*:
// ### TUPLES
//
// Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for
// that date.
// */
//
//// TODO: Write solution here
//let tuple: (Int, Int, Int, Double) = (1, 2, 3, 4.5)
///*:
// Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
// */
//
//// TODO: Write solution here
//let tuple2: (Int, Int, Int, Double) = (month: 1, day: 2, year: 3, temp: 4.5)
///*:
// In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
// */
//
//// TODO: Write solution here
//let (_, day, _, temp) = tuple2
//(day, temp)
///*:
// Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value. */
//
//// TODO: Write solution here
//var tuple3 = (month: 1, day: 2, year: 3, temp: 4.5)
//tuple3.temp = 5.6
//tuple3
//
//
//
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
//
//
///* Booleans */
//let condition = true
//let condition2: Bool = false
//let condition3 = "kostis">"kostis" // checks alphabetical order!!!
//let condition4 = 1<3 && 2>1
//
//// condition ? trueValue : falseValue
//let kostisAge = 5 >= 6 ? 7 : 8
//
//// **** CHALLENGE **** //
///***********************/
///*:
// ### BOOLEANS
// Create a constant called `myAge` and set it to your age. Then, create a constant called `isTeenager` that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
// */
//
//// TODO: Write solution here
//let myAge = 26
//let isTeenager = myAge>13 && myAge<19
///*:
// Create another constant called `theirAge` and set it to the age of the author of these challenges (tutorial team member Matt Galloway), which is 30. Then, create a constant called `bothTeenagers` that uses Boolean logic to determine if both you and him are teenagers.
// */
//
//// TODO: Write solution here
//let theirAge = 30
//let bothTeenagers = isTeenager && theirAge>13 && theirAge<19
///*:
// Create a constant called student and set it to your name as a string. Create a constant called author and set it to Matt Galloway. Create a constant called `authorIsStudent` that uses string equality to determine if student and author are equal.
// */
//
//// TODO: Write solution here
//let (student, author) = ("kostis","giannis")
//let authorIsStudent = student==author
///*:
// Create a constant called `studentBeforeAuthor` which uses string comparison to determine if student comes before author.
// */
//
//// TODO: Write solution here
//let studentBeforeAuthor = student < author
//
///*:
// ### IF STATEMENTS AND BOOLEANS
// Create a constant called `myAge` and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19, and Not a teenager if your age is not between 13 and 19.
// */
//
//// TODO: Write solution here
//isTeenager ? "Teenager" : "Not teenager"
///*:
// Create a constant called `answer` and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out answer.
// */
//
//// TODO: Write solution here
//let answer = isTeenager ? "Teenager" : "Not teenager"
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
//
//
//
//
//
///* While */
////while CONDITION {
////       LOOP
////}
//
///* or */ //executes atleast once!!!
////repeat {
////    LOOP
////} while condition
////break //end the loop
//
//// **** CHALLENGE **** //
///***********************/
//
///*:
// ### WHILE LOOPS
// Create a variable named `counter` and set it equal to 0. Create a `while` loop with the condition `counter < 10` which prints out `counter` is `X` (where `X` is replaced with counter value) and then increments `counter` by 1.
// */
//
//// TODO: Write solution here
//var counter = 0
//while counter < 10 {
////    print("counter is: \(counter)")
//    counter+=1
//}
///*:
// Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int(arc4random_uniform(6)) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.
// */
//
//// TODO: Write solution here
//counter = 0
//var roll = 0
//repeat {
//    roll = Int(arc4random_uniform(6))
//    counter += 1
////    print("After \(counter) rolls, roll is \(roll)")
//} while roll != 0
//
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///* FOR */
//let range = 0...5
//let range2 = 0..<5
//
////for i in range2 {
////    print(i)
////}
//
////for _ in 1...5 {
////    print("o kostis sas")
////}
//
////for i in 1...10 where i % 2 == 1 { //odd numbers
////    print(i)
////}
//
////continue // restart loop from the begining ignoring everything below it
////break // exit loop
//
//// **** CHALLENGE **** //
///***********************/
///*:
// ### FOR LOOPS
//
// Create a constant called range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.
// */
//
//// TODO: Write solution here
////let range3 = 1...10
////for i in range3 {
////    print(pow(Decimal(i), 2)) // i*i
////}
///*:
// The code below iterates over only even rows. Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is still 448 after your modifications.
// */
//// TODO: Modify per instructions above
//
//var sum = 0
//for row in 0..<8 {
//    if row % 2 == 0 {
//        continue
//    }
//    for column in 0..<8 {
//        sum += row * column
//    }
//}
//sum
//
//sum = 0
//for row in 0..<8 where row % 2 == 1 {
//    for column in 0..<8 {
//        sum += row * column
//    }
//}
//sum
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
///* SWITCH */
////let i = 10
////switch i {
////case 1:
////    ...
////case _ where i % 2 == 1:
////    ...
////default:
////    ...
////}
//
///*:
// ### SWITCH STATEMENTS
//
// Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult;40-60, Middle aged; 61+, Elderly.
// */
//
//// TODO: Write solution here
//let age = 9
//switch age {
//case 0...2:
//    print("Infant")
//case 3...12:
//    print("child")
//default:
//    print("old")
//}
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
///* FUNCTIONS */
//
////func multiplyThese(_ x: Int, _ y: Int){
////    x * y
////}
////multiplyThese(5, 8)
////
////func multiplyThese(x: Int, y: Int){
////    x * y
////}
////multiplyThese(x: 5, y: 6)
////
////
////// function which returns e.g:
////func multiply(int, int) -> Int {
////    return int * int
////}
////
////func multiplyANDadd(int, int) -> (product: Int, addition: Int){
////    return (int * int, int + int)
////}
//
//
///*:
// ### INTRODUCTION TO FUNCTIONS
//
// Write a function named `printFullName` that takes two strings called `firstName` and `lastName`.  The function should print out the full name defined as `firstName` + " " + `lastName`. Use it to print out your own full name.
// */
//
//// TODO: Write solution here
//func printFullName(_ firstName: String, _ lastName: String) -> (String, Int) {
//    return ("the full name is \(firstName) \(lastName)", (firstName + lastName).count)
//}
//printFullName("kostis", "kosti")
///*:
//
// Change the declaration of `printFullName` to have no external name for either parameter.
// */
//
//// TODO: Write solution here
//
///*:
// Write a function named `calculateFullName` that returns the full name as a string. Use it to store your own full name in a constant.
// */
//
//// TODO: Write solution here
//
///*:
// Change `calculateFullName` to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the following syntax: `string.characters.count`. Use this function to determine the length of your own full name.
// */
//
//// TODO: Write solution here
//
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
///* function overloading */
//// "inout", "&", "var"
//func incrementValue(_ value: inout Int){
//    value += 1
//}
//var number = 2
//incrementValue(&number)
//
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///*:
// ### INTRODUCTION TO OPTIONALS
//
// Make an optional `String` called `myFavoriteSong`. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to `nil`.
// */
//
//// TODO: Write solution here
//let favoriteSong: String? = "kostis" //nil
///*:
// Create a constant called `parsedInt` and set it equal to `Int("10")` which tries to parse the string `10` and convert it to an `Int`. Check the type of `parsedInt` using Option-Click. Why is it an optional?
// */
//
//// TODO: Write solution here
//let parseInt = Int("dog")
//let parseInt2 = Int("5")
///*:
// Change the string being parsed in the above exercise to a non-integer (try "dog" for example). What does `parsedInt` equal now?
// */
//
//// TODO: Write solution here
//
//
//
///*:
// ### MORE OPTIONALS
//
// Using your `myFavoriteSong` variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."
// */
//
//// TODO: Write solution here
//if let favoriteSong = favoriteSong {
//    print(favoriteSong)
//} else {
//    print("no song found")
//}
///*:
// Change `myFavoriteSong` to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
// */
//
//// TODO: Follow instructions
//
///*:
// Write a function called `printNickname` that takes an optional String as a parameter. Use the `guard` statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.
// */
//
//// TODO: Write solution here
//func printNickname(_ nickname: String?){
//    //    print(nickname) // -> tipwnei: Optional(the_name_you_give)
//    guard let nickname = nickname else {
//        print("no nickname available")
//        return
//    }
//    print(nickname)
//}
//printNickname(nil)
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///* ARRAYS */
//
//var myArray = [1,2,3,4]
//myArray.append(10)
//myArray += [6,7,8]
//myArray.count
//print(myArray.last)
//if let first = myArray.first {
//    first + 100
//}
//
//if !myArray.isEmpty {
//    print("hiii")
//}
//
//myArray[myArray.count-4]
//
///****
// // contains (returns true or false), min, max, to get some -> [0...2], insert, remove[index], dropFirst(3) (removes the 2 first elements of the array)
//****/
//
//for (index, myArray2) in myArray.enumerated() {
//    print(index, "->", myArray2)
//}
//
//myArray.dropLast(2)
//myArray.count
//myArray
//
//for i in myArray.enumerated() {
//    print(myArray[i.offset])
//}
//
///*:
// ### ARRAYS
//
// Use index(of:) to determine the position of the element "Dan" in players.
// */
//
//var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]
//
//// TODO: Write solution here
//players.index(of: "Dan")
//if var index = players.index(of: "Dan") {
//    index += 4
//}
//
//
//players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
//let scores = [2, 2, 8, 6, 1, 2, 1]
//
//// TODO: Write solution here
//for (index, player) in players.enumerated() {
//    print("\(scores[index]):, \(player)")
//}
////**** OR ****//
//for index in players.enumerated() {
//    print(scores[index.offset], index.element)
//}
//
//
//



///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///*:
// ### DICTIONARIES
//
// Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
// */
//
//// TODO: Write solution here
//// key: value
//var myDictionary = ["name": "george", "country": "cy", "city": "nicosia"]
///*:
// You suddenly decide to move to Albuquerque. Update your city to Albuquerque, your state to New Mexico, and your country to USA.
// */
//
//// TODO: Write solution here
//myDictionary["country"] = "America"
//myDictionary["city"] = "New York"
////myDictionary["state"] = "alabama"
//myDictionary
///*:
// Given a dictionary in the above format, write a function that prints a given person's city and state.
// */
//
//// TODO: Write solution here
//func detailsOfLocation(_ dictionary: [String: String]) -> (String, String){
//    // firstly, check if the 2 parameters are nil
//    if let state = dictionary["state"], let city = dictionary["city"]{
//        return(state, city)
//    }
//    return("no city", "no state")
//}
//detailsOfLocation(myDictionary)
//
//

///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///* CLOSURES */
//
////declare a closure:
//var multiplyClosure: (Int, Int) -> Int
//
//multiplyClosure = { a, b in
//    return a * b
//}
//
//// or
//
////multiplyClosure = {
////    return $0 * $1 // parameter0 * parameter1
////}
//
//multiplyClosure(8,3)
//
//// void closure:
//var counter = 0
//let voidClosure: () -> Void = {
//    counter += 1
//}

//// example
//func countingClosure() -> () -> Int {
//    var counter = 0
//    let incrementingCounter: () -> Int = {
//        counter += 1
//        return(counter)
//    }
//    return incrementingCounter
//}
//
//let counter1 = countingClosure()
//let counter2 = countingClosure()
//
//counter1()
//counter1()
//counter1()
//counter2()
//
//
///*
// http://fuckingclosuresyntax.com
//*/
//
//// e.g. sort a list
//var arrayAspume = ["b", "c", "a"]
//arrayAspume.sorted()
//arrayAspume.sorted(by: {a, b in
//    a > b       // <, > => vallei ta me alfavitiki seira
//})
//// or:
//arrayAspume.sorted(by: {
//    $0 > $1
//})
//
//// filter elements inside the array
//let firstTwoLetters = arrayAspume.filter({a in
//    a < "c"
//})
//
//// edit elements in the array
//let longerLetters = arrayAspume.map({a in
//    a + "k"
//})
//
//// make calculations => reduce(arxiki timi e.g. sum to start at 0 and accumulate, { closure })
//let concatForSentence = arrayAspume.reduce("", {result, letter -> String in
//    result + letter
//})
//
//
///*:
// ### CLOSURES
//
// Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
// */
//
//// TODO: Write solution here
//let namesArray = ["kostis", "giannis", "giakoumis", "pavlakis", "Jon"]
//let mergedNames = namesArray.reduce("", {result, eachName -> String in
//    result + eachName
//})
///*:
// Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.) */
//
//// TODO: Write solution here
//let mergeOnlyBigNames = namesArray.filter({name in
//    name.count > 4
//}).reduce("", {result, name -> String in
//    result + name
//})
//
///*:
// Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18. */
//
//// TODO: Write solution here
//let dictionary = ["kostis": 4, "giannis": 32, "giakoumis": 21, "pavlakis": 9]
//let reducedDictionary = dictionary.filter({keyAndValue in
//    keyAndValue.value > 18
//})
///*:
// Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages). */
//
//// TODO: Write solution here
//reducedDictionary.map { keyAndValue in
//    keyAndValue.key
//}
//
//

///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
///* STRINGS = collection of characters */
//
//let bigString = """
//1, 2, fg
//3, 4, 9
//5, 6, p9
//"""
//print(bigString)
//
//// extract only the numbers
//var charArray: [Character] = []
//for char in bigString.unicodeScalars where char.value >= 48 && char.value <= 57 {
//    charArray.append(Character(char))
//}
//print(charArray)
//
//var cafe = "cafè"
//print("cafè")
//print("cafe\u{0300}")
//
//let firstIdx = cafe.startIndex
//let firstChar = cafe[firstIdx]
//
//var lastIdx = cafe.index(cafe.endIndex, offsetBy: -1) // thelw to prwtelefteo !!!
//print(lastIdx.encodedOffset)
//// or
//lastIdx = cafe.index(before: cafe.endIndex)
//print(lastIdx.encodedOffset)
//let lastChar = cafe[lastIdx]
//
//
//// search in string:
//cafe.index(of: "f") // might be nil so,
//if let f = cafe.index(of: "f") {
//    let ca = cafe[cafe.startIndex..<f]
//}



///*---------------------------------------------------------------------------------------------------------------------------*/



/* STRUCTURES */
//
//
//import Foundation
//
//struct Location {
//    let x: Int
//    let y: Int
//}
//
//struct DeliveryArea {
//    let center: Location
//    var radius: Double
//
//    func contains(_ location: Location) -> Bool {
//        let distanceToStore = distance(from: location, to: center)
//        return distanceToStore < radius
//    }
//
//}
//
//let restaurant = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let otherRestaurant = DeliveryArea(center: Location(x: 7, y: 8), radius: 1.5)
//let restaurants = [restaurant, otherRestaurant]
//
//// Pythagorean Theorem 📐🎓
//func distance(from source: Location, to target: Location) -> Double {
//    let distanceX = Double(source.x - target.x)
//    let distanceY = Double(source.y - target.y)
//    return sqrt(distanceX * distanceX + distanceY * distanceY)
//}
//
//func isInDeliveryRange(location: Location) -> Bool {
//    for restaurant in restaurants {
//        if restaurant.contains(location) {
//            return true
//        }
//    }
//    return false
//
//}
//
//isInDeliveryRange(location: Location(x: 3, y: 4))
//isInDeliveryRange(location: Location(x: 5, y: 4))
//isInDeliveryRange(location: Location(x: 8, y: 8))
//
//var a: Int = 5
//var b = a
//print(a)
//print(b)
//
//a = 10
//print(a)
//print(b)
//
//var area1 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let area2 = area1
//area1.radius = 3.5
//print(area1.radius)
//print(area2.radius)
//
//
//import Foundation
////: ### STRUCTURES
////: Write a struct that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.
//
//// TODO: Write solution here
//struct pizzaOrder {
//    let toppings: [String]
//    let size: Int
//}
//
//let myPizza = pizzaOrder(toppings: ["ppaklavas"], size: 12)
//
////: Change `distance(from:to:)` to use `Location`s as parameters instead of x-y tuples.
//struct Location {
//    let x: Int
//    let y: Int
//}
//
//// TODO: Modify this
////func distance(from source: (x: Int, y: Int), to target: (x: Int, y: Int)) -> Double {
////    let distanceX = Double(source.x - target.x)
////    let distanceY = Double(source.y - target.y)
////    return sqrt(distanceX * distanceX + distanceY * distanceY)
////}
//func distance(from source: Location, to target: Location) -> Double {
//    let distanceX = Double(source.x - target.x)
//    let distanceY = Double(source.y - target.y)
//    return sqrt(distanceX * distanceX + distanceY * distanceY)
//}
////: Change `contains(_:)` to call the new `distance(from:to:)` with `Location`s.
//
//struct DeliveryArea {
//    let center: Location
//    var radius: Double
//
//    func contains(_ location: Location) -> Bool {
//        // TODO: Modify this
//        let distanceFromCenter =
//            distance(from: center,
//                     to: location)
//
//        return distanceFromCenter < radius
//    }
//
//    func overlaps(with area: DeliveryArea) -> Bool {
//        return distance(from: center, to: area.center) <= (radius + area.radius)
//    }
//
//}
//
////: Add a method `overlaps(with:)` on `DeliveryArea` that can tell you if the area overlaps with another area.
//let area1 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let area2 = DeliveryArea(center: Location(x: 5, y: 9), radius: 2.5)
//// TODO: Test if areas 1 and 2 overlap (should be false)
//area1.overlaps(with: area2)
//
//let area3 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let area4 = DeliveryArea(center: Location(x: 3, y: 5), radius: 2.5)
//// TODO: Test if areas 3 and 4 overlap (should be true)
//area3.overlaps(with: area4)
//
//
//
///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
//struct Person {
//    var firstName: String {
//        didSet {
//            if let spaceIndex = firstName.index(of: " ") {
//                print("No spaces allowed! Reverting change.")
//                firstName = oldValue
//            } else {
//                print("The value of firstName changed from \(oldValue) to \(firstName)")
//            }
//        }
//    }
//    var lastName: String
//
//    static var outOfWedlock = "Snow"
//
//    var fullName: String {
//        get {
//            return "\(firstName) \(lastName)"
//        }
//        set {
//            if let spaceIndex = newValue.index(of: " ") {
//                firstName = String(newValue[..<spaceIndex])
//                lastName = String(newValue[newValue.index(after: spaceIndex)...])
//            }
//        }
//    }
//
//    lazy var isAlive: Bool = {
//        print("Checking life...")
//        if fullName == "Waymar Royce" {
//            return false
//        } else {
//            return true
//        }
//    }()
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//}
//
//var person = Person(firstName: "Ray", lastName: "Wenderlich")
//
//person.firstName = "Vicki"
//let vicki = person.firstName
//
//person.lastName = "Coulter"
//
//person.fullName
//person.fullName = "Ben Morrow"
//person.firstName
//person.lastName
//
//
//person.lastName = Person.outOfWedlock
//person.fullName
//person.firstName = "Jon Snow"
//person.fullName
//
//print("Here 1")
//person.isAlive
//
//var person2 = Person(firstName: "Waymar", lastName: "Royce")
//print("Here 2")
//person2.isAlive
//
////: ### PROPERTIES
////: Create a struct named `Temperature` that contains a stored property `degreesF` that is a `Double`, which will store the degrees in Fahrenheit. Then add a computed property called `degreesC` that is a `Double`, that calculates the degrees in Celsius. Hint: `degreesC` should be equal to `(degreesF - 32) / 1.8`.
//
//// TODO: Write solution here
//struct Temperature {
//
//    // stored property: (willSet and didSet observers)
////    var degreesF: Double
//
//    // or //
//    // with willSet and didSet observers
//    var degreesF: Double {
//        didSet {
//            if degreesF > 100 {
//                print("With \(degreesF) degrees Fahrenheit, it is too damn hot !!")
//            } else {
//                print("Now that 's better")
//            }
//        }
//    }
//
//
//    // computed property:
//    var degreesC: Double {
//        // getter:
////        return (degreesF - 32) / 1.8
//
//        // or //
//        get {
//            return (degreesF - 32) / 1.8
//        }
//
//        // setter: (use newValue to get the degreesC that the user inputs)
//        set {
//            degreesF = newValue * 1.8 + 32
//        }
//    }
//}
//
//
///****** Note: */
//// I can initialize a value like this:
//extension Temperature {
//    init() {
//        degreesF = 32
//    }
//}
//// or inside the structure
///************/
//
//
//var temp = Temperature(degreesF: 70)
//temp.degreesC
////: Modify the `degreesC` computed property to add a setter, so that by setting the degrees in Celsius, it actually updates the degrees in Fahrenheit.
//
//// TODO: Modify code above
//temp.degreesC = 20
//temp.degreesF
////: Modify the `degreesF` stored property to print out "Too hot!" if it is set to above 100 degrees Fahrenheit.
//
//// TODO: Modify code above
//// willSet and didSet observers
//temp.degreesF = 101
//temp.degreesF = 14
//
//
//
//

///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
//
//
////: ### METHODS
////: Create a structure named `Student` with three properties: first name, last name and grade. Then create a structure named `Classroom` with two properties: the class name, and an array of students. Finally, create a method named `highestGrade()` that returns the highest grade in the classroom. Try using `reduce` on the array to perform the calculation.
//
//// TODO: Write solution here
//struct Student {
//    let firstName: String
//    let lastName: String
//    var grade: Double
//}
//
//struct Classroom {
//    let className: String
//    var students: [Student]
//
//    func numOfStudents() -> Int {
//        return students.count
//    }
//
//    func highestGrade() -> Double {
//        return students.reduce(0, {result, student in
//            return student.grade > result ? student.grade : result
//        })
//    }
//}
//
//var student1 = Student(firstName: "kostis", lastName: "kosti", grade: 5)
//var student2 = Student(firstName: "giannis", lastName: "gianni", grade: 15)
//var student3 = Student(firstName: "giakoumis", lastName: "giakoumi", grade: 10)
//var classroom = Classroom(className: "oi dianies", students: [student1, student2, student3])
//classroom.highestGrade()
//
////: Make an extension on classroom with a method named `curveGrades()`. This method should find the difference between 100 and the highest grade, and add this amount to all students scores. Finally, sort the students array so they are ordered from the students with the highest score, to the students with the lowest score.
////:
////: **Hint**: remember that structures are value types, so if you iterate with `for student in students` you'll get a constant copy of the student, not the student inside the array. Is there another way you can loop through the students in the array?
//
//// TODO: Write solution here
//extension Classroom {
//    // mutating because the structure changes after this function runs
//    mutating func curveGrades(){
//        let curveAmount = 100.0 - highestGrade()
//
//        for i in 0..<students.count {
//            students[i].grade += curveAmount
//        }
//
//        students.sorted(by: {student1, student2 in
//            return student1.grade > student2.grade
//        })
//    }
//}
//
//classroom.curveGrades()
//classroom.numOfStudents()
//
//for i in 0..<classroom.numOfStudents() {
//    print(classroom.students[i].grade)
//}
//
//
////: Make an extension on Student that implements `CustomStringConvertible`. It should return a string in this format: "[last name], [first name]: [grade]".
//
//// TODO: Write solution here
//// a computed property is needed when a CustomStringConvertible is implemented
//extension Student: CustomStringConvertible {
//    var description: String {
//        return "\(firstName) \(lastName): \(grade)"
//    }
//}
//
//student3
//
//// or //
//
//for student in classroom.students {
//    print(student)
//}
////: Make an extension on Classroom that implements `CustomStringConvertible`. It should return a string with the classroom name, and a newline, followed by the list of students with a newline between each student.
//
//// TODO: Write solution here
//extension Classroom: CustomStringConvertible {
//    var description: String {
//        return "Classroom '\(classroom.className)' has the following students: \n\(students)"
//    }
//}
//print(classroom.description)
//
//
//
//
//



///*---------------------------------------------------------------------------------------------------------------------------*/
//
//
//
//
///* CLASSES */
//
//
//struct PersonStruct {
//    var firstName: String
//    var lastName: String
//
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
//
//    mutating func uppercaseName() {
//        firstName = firstName.uppercased()
//        lastName = lastName.uppercased()
//    }
//
//}
//
//class PersonClass {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
//
//    func uppercaseName() {
//        firstName = firstName.uppercased()
//        lastName = lastName.uppercased()
//    }
//
//}
//
//var person1 = PersonStruct(firstName: "Ray", lastName: "Wenderlich")
//let person2 = person1
//person1.firstName = "Bob"
//person1.firstName
//person2.firstName
//
//var person3 = PersonClass(firstName: "Ray", lastName: "Wenderlich")
//var person4 = person3
//person3.firstName = "Bob"
//person3.firstName
//person4.firstName
//
//person4 = PersonClass(firstName: "Vicki", lastName: "Wenderlich")
//person4 = person3
//
//
///*:
// ## CLASSES VS STRUCTURES
//
// Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
//
// Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
//
// - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
// - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
// - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
// */
//
//// TODO: Write solution here
//class User {
//    var movieList: [String: List] = [:] // initial empty dictionary
//
//    func addList(_ list: List){
//        movieList[list.name] = list
//    }
//
//    func list(forName name: String) -> List? {
//        return movieList[name]
//    }
//}
//
//class List {
//    var name: String //= ""
//    var movies: [String] //= []
//
//    // initialize like this or like the comments 2 lines above
//    init(name: String, movies: [String]){
//        self.name = name
//        self.movies = movies
//    }
//
//    func printMovies(){
//        for i in movies {
//            print(i)
//        }
//        print("\n")
//    }
//}
//
//let kostis = User()
//let giannis = User()
//var marvelMovies = List(name: "Marvel", movies: []) // an ta arxikopoias xwris to "init" mes to struc, ena evalles "= List()" mono
//
//kostis.addList(marvelMovies)
//giannis.addList(marvelMovies)
//
//kostis.movieList["Marvel"]?.movies.append("Iron man") // an iparxei katigoria "Marvel"
//kostis.movieList["Marvel"]?.movies.append("Black panther")
//giannis.movieList["Marvel"]?.movies.append("Spider man")
//
//giannis.movieList["Marvel"]?.printMovies()
//kostis.movieList["Marvel"]?.printMovies()
//
///*:
//
// What happens when you implement the same with structs and what problems do you run into?
// */
//
//// TODO: Modify code above
//struct UserStruc {
//    var movieList: [String: ListStruc] = [:] // initial empty dictionary
//
//    mutating func addList(_ list: ListStruc){
//        movieList[list.name] = list
//    }
//
//    func list(forName name: String) -> ListStruc? {
//        return movieList[name]
//    }
//}
//
//struct ListStruc {
//    var name: String //= ""
//    var movies: [String] //= []
//
//    // initialize like this or like the comments 2 lines above
//    init(name: String, movies: [String]){
//        self.name = name
//        self.movies = movies
//    }
//
//    func printMovies(){
//        for i in movies {
//            print(i)
//        }
//        print("\n")
//    }
//}
//
//var kostis2 = UserStruc()
//var giannis2 = UserStruc()
//var marvelMovies2 = ListStruc(name: "Marvel", movies: []) // an ta arxikopoias xwris to "init" mes to struc, ena evalles "= List()" mono
//
//kostis2.addList(marvelMovies2)
//giannis2.addList(marvelMovies2)
//
//kostis2.movieList["Marvel"]?.movies.append("Iron man") // an iparxei katigoria "Marvel"
//kostis2.movieList["Marvel"]?.movies.append("Black panther")
//giannis2.movieList["Marvel"]?.movies.append("Spider man")
//
//giannis2.movieList["Marvel"]?.printMovies()
//kostis2.movieList["Marvel"]?.printMovies()
//
///**** it creates 2 copy structs, 1 for each user. so, each user has his own list of movies.
//
//        With the classes above, the users were sharing the movies list
//
// *****/
///*:
//
// Your challenge here is to imagine a set of objects to support a t-shirt store. Decide if each object should be a class or a struct, and why. You don't need to write any code; just decide whether to use a class or a struct for each.
//
// - `TShirt` - Represents a shirt style you can buy. Each `TShirt` has a size, color, price, and an optional image on the front.
// - `User` - A registered user of the t-shirt store app. A user has a name, email, and a `ShoppingCart` (below).
// - `Address` - Represents a shipping address, containing the name, street, city, and zip code.
// - `ShoppingCart` - Holds a current order, which is composed of an array of `TShirt` that the `User` wants to buy, as well as a method to calculate the total cost. Additionally, there is an `Address` that represents where the order will be shipped.
//
// */
//
///*
// Solution:
//
// - TShirt: A TShirt can be thought of as a value, because it doesn't represent a real shirt, only a description of a shirt. For instance, a TShirt would represent "a large green shirt order" and not "an actual large green shirt". For this reason, TShirt can be a STRUCT instead of a class.
// - User: A User represents a real person. This means every user is unique so User is best implemented as a CLASS.
// - Address: Addresses group multiple values together and two addresses can be considered equal if they hold the same values. This means Address works best as a value type (STRUCT).
// - ShoppingCart: The ShoppingCart is a bit tricker. While it could be argued that it could be done as a value type, it's best to think of the real world semantics you are modeling. If you add an item to a shopping cart, would you expect to get a new shopping cart? Or put the new item in your existing cart? By using a class, the reference semantics help model real world behaviors. Using a CLASS also makes it easier to share a single ShoppingCart object between multiple components of your application (shopping, ordering, invoicing, ...).
// */







///*---------------------------------------------------------------------------------------------------------------------------*/




///* inheritance */
//
//
//
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//
//class Student: Person {
//    var grades: [Grade] = []
//
//    func recordGrade(_ grade: Grade) {
//        grades.append(grade)
//    }
//}
//
//
//let john = Person(firstName: "John", lastName: "Appleseed")
//let jane = Student(firstName: "Jane", lastName: "Appleseed")
//john.firstName
//jane.firstName
//
//let history = Grade(letter: "B", points: 9.0, credits: 3.0)
//jane.recordGrade(history)
//// john.recordGrade(history)
//
//
//class BandMember: Student {
//    var minimumPracticeTime = 2
//}
//
//
//class OboePlayer: BandMember {
//    override var minimumPracticeTime: Int {
//        get {
//            return super.minimumPracticeTime * 2 // super. to get the var vrom the class it inherites from
//        }
//        // set it back to 2 to keep things consistent
//        set {
//            super.minimumPracticeTime = newValue / 2
//        }
//    }
//}
//
//
//func phonebookName(_ person: Person) -> String {
//    return "\(person.lastName), \(person.firstName)"
//}
//
//let person = Person(firstName: "Ray", lastName: "Wenderlich")
//let oboePlayer = OboePlayer(firstName: "Vicki", lastName: "Wenderlich")
//phonebookName(person)
//phonebookName(oboePlayer)
//
//var hallMonitor = Student(firstName: "Jill", lastName: "Bananapeel")
//hallMonitor = oboePlayer
//(oboePlayer as Student).firstName
//hallMonitor = jane
//let oboe2 = hallMonitor as? OboePlayer  // down-casting with "?" because "hall monitor" might not be an oboe player
//if let oboe2 = oboe2 {
//    print(oboe2.minimumPracticeTime)
//} else {
//    print("Not an oboe player")
//}
//
//class StudentAthlete: Student {
//
//    var failedClasses: [Grade] = []
//
//    override func recordGrade(_ grade: Grade) { // override the method from parent to use it
//        super.recordGrade(grade)                // and call super to get its functionality (that 1 line of code)
//        if grade.letter == "F" {
//            failedClasses.append(grade)
//        }
//    }
//
//    var isEligible: Bool {
//        return failedClasses.count < 3
//    }
//
//}
//
//var athlete = StudentAthlete(firstName: "Jon", lastName: "Snow")
//athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
//athlete.isEligible
//athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
//athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
//athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
//athlete.isEligible
//







///*---------------------------------------------------------------------------------------------------------------------------*/




//
///*:
// ## INITIALIZERS
//
// Create a class named `Animal` that has a single stored property named `name`, that is a `String`. It should have a required initializer that takes `name` as a parameter, and a function `speak()` that does nothing.
// */
//
//// TODO: Write solution here
//class Animal {
//    var name: String
//
//    required init(name: String){
//        self.name = name
//    }
//
//    func speak(){
//        print("nothing")
//    }
//}
///*:
// Create a class named `Dog` that inherits from `Animal`. It should have a single stored property named `numTricksLearned`, that is an `Int`. It should implement the required initializer, defaulting `numTricksLearned` to `0`, and it should call `speak()` at the end of the initializer. Finally, it should override the function `speak()` to say `Bow Wow`.
// */
//
//// TODO: Write solution here
//class Dog: Animal{
//    var numTricksLearned: Int
//
//    required init(name: String) {
//        numTricksLearned = 0
//        super.init(name: name)
//        speak()
//    }
//
//    init(name: String, numTricksLearned: Int) {
//        self.numTricksLearned = numTricksLearned
//        super.init(name: name)
//        speak()
//    }
//
//    override func speak() {
//        print("Bow Wow")
//    }
//
//}
//
//var dog = Dog(name: "prokopis")
//
///*:
// Add a second (non-required) initializer to `Dog` that takes both the `name` and `numTricksLearned` as parameters.
// */
//
//// TODO: Modify solution above
//
///*:
// In an extension, add a convenience initializer to `Dog` that defaults the dog's name to your favorite dog's name, with however many tricks the dog has learned.
// */
//
//// TODO: Write solution here
//
//// convenience initializers take their class initializers (not their super class)
//extension Dog{
//    convenience init(){
//        self.init(name: "mixalakis", numTricksLearned: -5)
//    }
//}
//
//let dog2 = Dog()







///*---------------------------------------------------------------------------------------------------------------------------*/















