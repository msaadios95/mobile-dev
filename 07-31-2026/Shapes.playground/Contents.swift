import UIKit

protocol Shape {
    var area: Double { get }
    func describe() -> String
}

extension Shape {
    
    func describe() -> String {
        return "This shape has an area of \(String(format: "%.2f",area))"
    }
    
}

struct Circle: Shape {
    
        var radius: Double
        var area: Double {
           Double.pi * radius * radius
        }
    
        func describe() -> String {
            
            return "Circle with area \(String(format: "%.2f", area))"
            
        }
}
    

struct Square: Shape
{
    var side: Double
    
    var area: Double {
        side * side
    }
    
    func describe() -> String {
        
        return "Square with area \(String(format: "%.2f", area))"
        
    }

}


struct Triangle: Shape
{
    var base: Double
    var height: Double
    var area: Double {
        (base * height) / 2
    }
    
    
    func describe() -> String {
        
        return "Triangle with area \(String(format: "%.2f", area))"
        
    }
}


let circle : Shape = Circle(radius: 2)
print(circle.describe())

let square : Shape = Square(side: 4)
print(square.describe())


let triangle : Shape = Triangle(base: 2, height: 2)
print(triangle.describe())



/*
 
 
 protocol Shape {
     var area: Double { get }
     var name: String { get }
 }

 struct Circle: Shape {
     
         var radius: Double
         var name: String { "Circle" }
         var area: Double {
            Double.pi * radius * radius
         }
 }

 struct Rectangle: Shape
 {
     var width: Double
     var height: Double
     
     var name: String { "Rectangle" }
     var area: Double {
         width * height
     }
 }

 struct Triangle: Shape
 {
     var base: Double
     var height: Double
     
     var name: String { "Triangle" }
     var area: Double {
         (base * height) / 2
     }
 }

 let shapes: [any Shape] = [
     Circle(radius: 2),
     Rectangle(width: 4, height: 5),
     Triangle(base: 2, height: 2)
 ]

 for shape in shapes {
     print("\(shape.name) with area \(String(format: "%.2f", shape.area))")
 }

 let totalArea = shapes.reduce(0) { $0 + $1.area }
 print("Total area: \(String(format: "%.2f", totalArea))")
 
 */
