import Foundation

var user_name:String = "Joe"
var user_age:Int = 20
var user_sex:Character = "m"
var user_qualified:Bool = true

if (user_qualified) {
    print("Hello \(user_name).")

    if (user_sex == "m") {
        print("You are male.")
    }
    else {
        print("You are female.")
    }
    if (user_age > 13) {
        print("You are teenager.")
    }
    else {
        print("You are kid.")
    }
}
else {
    print("You are not qualified.")
}
