//: Playground - noun: a place where people can play

import UIKit

// dictionaries
// var dict: Dictionary<Key,Value>
// key must be hasahable and unique (String, Int, Float, Double and Bool are all hashable)
// ways to get an instance of Dictionary:
// var dict1: Dictionary<String, Double> = [:]
// var dict2 = Dictionary<String, Double>()
// var dict3: [String:Double] = [:]
// var dict4 = [String:Double]()
// [:] is literal syntax

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

print("I have rated \(movieRatings.count) movies.")

// access a value from the dictionary by supplying the key associated with the value you want to retrieve
let darkoRating = movieRatings["Donnie Darko"]

// if you option-click on darkoRating, you get "let darkoRating: Int?".  when you subscript a Dictionary instance for a given key, the dictionary will return an optional matching the type of the Dictionary's values.  Dictionary type needs a way to tell you the value you asked for is not present.

// modifying a value
movieRatings["Dark City"] = 5
movieRatings

//updating a value using updateValue(_:forKey:)
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
movieRatings["Donnie Darko"]
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

// add a value
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings

// removing a value: key pair
//movieRatings.removeValue(forKey: "Dark City")
movieRatings
// this also returns the value the key was associated with, if key is found and removed successfully; the value return is an optional

// you can also remove a key-value pair by setting a key's value to nil
// the end result is the same, but this way does not return the removed key's value
movieRatings["Dark City"] = nil
movieRatings

// looping
for (key,value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

// you can also just access the keys
for movie in movieRatings.keys {
    print("User has rated \(movie).")
}

// immutable dictionaries
let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe" : 467,
             "Smokey's Carpet Cleaning Service" : 187,
             "Track 4" : 221]
// can't change this dictionary!  see below
//album["Pink Album"] = 444

// sending keys to an array
let watchedMovies = Array(movieRatings.keys)

// Silver Challenge - make an array of zip codes for three counties in a state.  print a sentence saying all the zip codes for Minnesota.
var Minnesota = ["Hennepin": [55404, 55406, 55412, 55405, 55408], "Dakota":[55124, 55125, 55126, 55127, 55128], "Ramsey":[55101, 55103, 55104, 55105, 55106]]

let hennepinZips = Minnesota["Hennepin"]
let dakotaZips = Minnesota["Dakota"]
let ramseyZips = Minnesota["Ramsey"]
print("Minnesota has the following zip codes: \(hennepinZips!) \(dakotaZips!) \(ramseyZips!)")

// GOLD CHALLENGE: print exactly as book has it printed.  puts each county zips on own line
// need to revisit this as well
print("Minnesota has the following zip codes: \(hennepinZips!)\n                                       \(dakotaZips!)\n                                       \(ramseyZips!)")


