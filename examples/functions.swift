import Foundation

var city:String = "london"

//var reverseCity:String = String(reverse(city))
//print(reverseCity)

var reverseCity:String = ""
for character in city {
    reverseCity = String(character) + reverseCity
}
print(reverseCity)

var book:String = "1HarryPotter"
var newBook = book.dropFirst()
print(newBook)
