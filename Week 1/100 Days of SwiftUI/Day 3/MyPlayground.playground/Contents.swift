import Cocoa


//How to store ordered data in arrays
var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
//array of strings
let numbers = [4, 8, 15, 16, 23, 42]
//array of integers
var temperatures = [25.3, 28.2, 26.4]
//array of decimals/doubles
//different types of arrays cannot be mixed

print(beatles[0])
print(numbers[1])
print(temperatures[2])
//starts counting at 0

var scores = Array<Int>()
//must always know what type of data the array is holding
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]()
//shortened way of writing Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//amount of strings in the array

characters.remove(at: 2)
print(characters.count)
//remove the 2nd string

characters.removeAll()
print(characters.count)
//remove all strings

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))
//see if an array contains a particular string

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
//sort an array of strings alphabetically

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
//reverse an array, specified by a new type of array


//How to store and find data in dictionaries
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
//"key": "value"
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
//sends the message to read each key's value, otherwise the default is to print "Unknown"

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]
//string boolean dictionary

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])
