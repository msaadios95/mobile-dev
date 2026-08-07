import UIKit

enum MyError: Error {
    case divideByZero
}
    
func divide(num: Double, num2: Double)throws -> Double {
    
    if num2 == 0 {
        throw MyError.divideByZero
    }
    
    return num / num2
}

// 1st Variation

let result = try? divide(num: 100, num2: 10)

// 2nd varation

do{
    try print (divide(num: 100 , num2: 10))
}catch{
    print(error.localizedDescription)
}


// 3rd Varation


// implicit unwrapped variable // force unwrapping

var name: String!  = "Joy"


print(name!)





enum CustomError: Error {
    case tooManyObjects(String)
}

class Counter {
    
   nonisolated(unsafe) static var objectCount = 0
    
    init() throws {
        if Counter.objectCount >= 3 {
            throw CustomError.tooManyObjects("Cannot create more than 3 Counter objects")
        }
        Counter.objectCount += 1
    }
}

do {
    for i in 1...8 {
        let counter = try Counter()
        print("Object \(i) created successfully")
    }
} catch {
    print(error.localizedDescription)
}
