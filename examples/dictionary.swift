import Foundation

let s:String = "1, 2, 2, 3, 2, 4, 2"
let array = s.components(separatedBy: ", ")

var dict = [Int: Int]()
for i in 0..<array.count {
    let key:Int = Int(array[i])!
    if dict.isEmpty {
        dict[key] = 1
    }
    else {
        if dict[key] == nil {
            dict[key] = 1
        }
        else {
            dict[key]! += 1
        }
    }
}

let sorted = dict.sorted { $0.1 > $1.1 }
print(dict)
print(sorted[0].key)
print(sorted[0].value)
