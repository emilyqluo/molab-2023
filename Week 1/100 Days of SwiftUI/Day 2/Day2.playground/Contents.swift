import Cocoa


//How to store truth with Booleans (stores simple true or false value)
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()
//use toggle to make a statement either true or false
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)
//you can assign a boolean's initial value based on some other code as long as ultimately it's either true or false

var isAuthenticated = false
isAuthenticated = !isAuthenticated
//use exclamation points to represent "not"
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


//How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
//+ is used to join strings together

let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let num2 = 11
let missionMessage = "Apollo \(num2) landed on the moon."
//can't add integers and strings together, use string interpolation instead

print("5 x 5 is \(5 * 5)")


/* Summary: Simple Data
 - Swift lets us create constants using let, and variables using var
 - Swift's strings contain text, from short strings up to whole novels
 - You create strings by using double quotes at the start and end
 - Swift calls its whole numbers integers, or Int
 - In Swift decimal numbers are called Double
 - You can store a simple true or false using a Boolean, or Bool
 - String interpolation lets us place data into strings efficiently
 */


//Checkpoint 1
let celsius = 12.0
let fahrenheit = (celsius * 9)/5 + 32
print("Celsius is \(celsius), Fahrenheit is \(fahrenheit).")
