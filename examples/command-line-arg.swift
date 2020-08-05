import Foundation

var count = CommandLine.argc
print("Number of arguments is \(count)")

for i in 1..<count {
    print("Parameter \(i) = " + CommandLine.arguments[Int(i)])
}
