import UIKit

let doublesArr: [Double] = [1.0, 3.0, 5.0]
// [Double] -> Double
func average(arr: [Double]) -> Double {
    var count: Double = 0
    for num in arr {
        count += num
    }
    return count / Double(arr.count)
}

func average2(arr: [Double]) -> Double {
    return arr.reduce(0, +) / Double(arr.count)
}

average(arr: doublesArr)
average2(arr: doublesArr)


// Division med heltal. Returnera kvot och rest som tuple
// int, int -> (int, int)
func divisionWithRest(x: Int, y: Int) -> (Int, Int) {
    let kvot = x / y
    let rest = x % y
    return (kvot, rest)
    // 6 % 3 -> 0
    // 5 % 3 -> 2
}
let res = divisionWithRest(x: 10, y: 3)
res


// Rövarspåk
// String -> String
func isConsonant(c: Character) -> Bool {
    let consonants = "bcdfghjklmnpqrstvxz"
    return consonants.contains(c)
}
func pirateLang(text: String) -> String {
    var result = ""
    for letter in text {
        if isConsonant(c: letter) {
            result += "\(letter)o\(letter)"
        } else {
            result += "\(letter)"
        }
    }
    return result
}
pirateLang(text: "diskmaskin")


// Find all numbers divisible by 13 & 16
let result = (0...100).filter{ (x) -> Bool in
    let shouldSave = x % 13 == 0 || x % 16 == 0
    return shouldSave
}
// Same result but without declaring variables in block
let result2 = (0...100).filter { $0 % 13 == 0 || $0 % 16 == 0 }
// Same result but using a predefined function
func filterAll(x: Int) -> Bool {
    return true
}
let result3 = (0...100).filter(filterAll)


// 1, 2, 3, 4, 5, 6
// ->
// 2 * 2
// 4 * 4
// 6 * 6

// Filter out all uneven numbers and square them
// Solution 1
func filterAndSquare(x: Int = 20) {
    let filteredNums = (1...x).filter { (i) -> Bool in
        return i % 2 == 0
    }
    let squaredNums = filteredNums.map { (i) -> Int in
        return i * i
    }
    squaredNums
}
filterAndSquare()

// Solution 2
func filterAndSquare2(x: Int = 20) {
    (0...x).filter { $0 % 2 == 0 }.map { $0 * $0 }
}


let strings = ["stekpanna", "fisk", "mjöl", "ägg", "ströbröd", "smör"]
// Count the total number of letter in an array of strings
// Solution 1
let resString = strings.reduce("") { (sumS, s) in
    return sumS + s
}
resString.count
// Solution 2
let resString2 = strings.reduce("") { $0 + $1 }.count

resString
