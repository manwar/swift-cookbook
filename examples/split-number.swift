extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}
extension LosslessStringConvertible {
     var string: String { .init(self) }
}

extension Numeric where Self: LosslessStringConvertible {
     var digits: [Int] { string.digits }
}

var year = 1234
var yearDigits = year.digits
print(yearDigits[0])
print(yearDigits[1])
print(yearDigits[2])
print(yearDigits[3])


var number:String = String(123456)
var array = number.utf8.map{Int($0)-48}
print(array[0])
print(array[1])
print(array[2])
print(array[3])
print(array[4])
print(array[5])
