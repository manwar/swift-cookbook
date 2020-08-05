import Foundation;

var array:[Int] = [1, 2, 3, 4, 5]
print(array)

var names:[String] = ["Aairah", "Aabia", "Aania"]
print(names)

//var twoDimensionArray = [[Int]]()

var twoDimensionArray:[[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
print(twoDimensionArray)

var twoDA = [[Int]]()
for _ in 1...3 {
    var d:[Int] = []
    for c in 1...3 {
        d.append(c)
    }
    twoDA.append(d)
}

print(twoDA)

print(createTwoDimensionArray(2,2))

func createTwoDimensionArray(_ rows:Int, _ cols:Int) -> [[Int]] {
    var array = [[Int]]()
    for _ in 1...rows {
        var d:[Int] = []
        for c in 1...cols {
            d.append(c)
        }
        array.append(d)
    }

    return array

}

//for i in 1...5 {
//    twoDimensionarray.append([i])
//}

//print(twoDimensionarray)

/*

[ [1,2,3],
  [4,5,6],
  [7,8,9]
]

*/
