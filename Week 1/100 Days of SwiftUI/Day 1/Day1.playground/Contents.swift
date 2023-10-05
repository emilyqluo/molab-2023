import Cocoa


//How to create constants and variables
var greeting = "Hello, playground"
/* var: Create a new variable
 greeting: Our variable's name
 = is to assign something
Hello, playground: Initial value
*/

var name = "Ted"
name = "Rebecca"
name = "Keeley"

let character = "Daphne"
//assign a constant; can't change constants

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)
//use print for debugging

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"
//capitalize the first letter of each word after the initial phrase


//How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐ You win! ⭐"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
//backslash before inner quotes within the string

let movie = """
A day in
the life of an
Apple engineer
"""
//need to use multiple quotation marks for strings containing line breaks

print(actor.count)
//use .count to read the length of a string (amount of characters)

let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))


//How to store whole numbers
let score = 10
let reallyBig = 100_000_000
//use underscores to break up long numbers, Swift ignores these

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)
//compound assignment operators

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))


//How to store decimal numbers
let decNum = 0.1 + 0.2
print(decNum)
//decimals are considered doubles

let a = 1
let b = 2.0
let c = Double(a) + b
//Swift doesn't let us mix integers and decimals by accident

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var rating = 5.0
rating *= 2
//2 is considered a double in this case
