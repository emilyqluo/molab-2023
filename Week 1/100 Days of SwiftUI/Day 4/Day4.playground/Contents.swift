import Cocoa


//How to use type annotations
let surname: String = "Lasso"
var score: Double = 0
//type annotations allows us to be specific about what data types we want

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark

let username: String
//lots of complex logic
username = "@twostraws"
//lots more complex logic
print(username)


/* Summary: Complex Data
 - Arrays store many values and read them using indices
 - Dictionaries store many values, and read them using keys we specify
 - Sets store many values, but we don't choose their order
 - Enums create our own types to specify a range of acceptable values
 - Swift uses type inference to figure what data we're storing
 - It's also possible to use type annotation to force a particular type
 */

//Checkpoint 2
let colors: [String] = ["yellow", "red", "blue", "green", "red"]
print(colors.count)

let unique_colors: Set<String> = Set(colors)
print(unique_colors.count)
