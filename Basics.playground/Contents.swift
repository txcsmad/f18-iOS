import UIKit

var str = "Hello, playground"
print(str)

var hello = "I'm Rishabh"

let bye = "See ya later"

let first = bye.index(bye.startIndex, offsetBy: 4)
print(bye[first])

print(first)

typealias car = Int

var z = 10
print(z)

var j = 11

var result = j - z

print(z)
print(result)

let 🅱️ = "Hi I am \(j + z)"
print(🅱️)

// Arrays, Sets, and Dictionaries
var bro:[Int] = [1, 2, 3, 4]

bro.append(5)

bro.removeFirst()
bro.popLast()
bro.randomElement()

var otherBro = Set<Int>()

otherBro.insert(10)
otherBro.insert(15)
otherBro.insert(10)

print(otherBro)

var bro3: [Int: Int] = Dictionary<Int,Int>()

bro3[9] = 0

print((bro3[9]))


var gum:Int?
var um: Int?
var red: Int?
//gum = 55
if let g = gum {
    print(g)
}

for _ in 0...10 {
    print("Hi")
}
while j < 15 {
    //do something
    j += 1
}

repeat {
    //do something
    j += 1
}while j < 20

if j > 10 {
    
} else{
    // do soemthing
}

func HEYOOOOOOOO(_ to: String) {
    print("HEYOOOOOOOOO WHAT'S UP \(to)")
}

HEYOOOOOOOO("RYAN")

func addsome10(to: Int) -> Int {
    return 10 + to
}

print(addsome10(to: 15))

z = addsome10(to: 80)

var yo = 10
var oyo = 11

func swap (this: inout Int, that: inout Int) {
    let temp = this
    this = that
    that = temp
}

swap(&yo, &oyo)
print(yo)
print(oyo)

var ropes: [Int] = [1,2,3,4,5,6,7,8,9]
ropes.filter { (Int) -> Bool in
    return Int > 5
}
ropes = [4,6,2,5,9,1,8]

ropes.sort { $0 < $1}
print(ropes)

enum Directions {
    case N, S, E, W
}

let d:Directions = .E
switch(d) {
case .N:
    print("North")
case .S:
    print("South")
case .E:
    print("East")
case .W:
    print("West")

}


class carz {
    var type: String
    var saying: String
    
    init() {
        type = "McQueen"
        saying = "KERCHOO"
    }
    func saySomething() -> String {
        return "HEY I'm \(type) and I like to say \(saying)"
    }
}

let queen:carz = carz()
print(queen.saySomething())

