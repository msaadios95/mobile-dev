import UIKit


func add<T: Numeric> (value1: T, value2: T) -> T {
    return value1 + value2
}


let sum = add(value1: 10, value2: 20)



class Stack<T> {
    
    private var inputs: [T] = []
    
    func push(_ input: T) {
        inputs.append(input)
    }
    
    func pop() -> T? {
        return inputs.popLast()
    }
    
    func peek() -> T? {
        return inputs.last
    }
}

let names = Stack<String>()

names.push("Alex")
names.push("Bob")

print(names.peek())
print(names.pop())
print(names.pop())
