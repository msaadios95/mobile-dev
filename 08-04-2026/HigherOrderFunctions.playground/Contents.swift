import UIKit

struct Employee {
    let id: Int
    let name: String
    let age: Int
    let department: String
    let salary: Double
    let skills: [String]
    let manager: String?
}

let employees = [
    Employee(id: 1,
             name: "John",
             age: 25,
             department: "iOS",
             salary: 75000,
             skills: ["Swift", "UIKit"],
             manager: "David"),

    Employee(id: 2,
             name: "Emma",
             age: 31,
             department: "Android",
             salary: 85000,
             skills: ["Kotlin", "Compose"],
             manager: nil),

    Employee(id: 3,
             name: "Mike",
             age: 29,
             department: "iOS",
             salary: 90000,
             skills: ["SwiftUI", "Combine"],
             manager: "David"),

    Employee(id: 4,
             name: "Sophia",
             age: 35,
             department: "Backend",
             salary: 120000,
             skills: ["Java", "Spring"],
             manager: "Kevin"),

    Employee(id: 5,
             name: "Chris",
             age: 27,
             department: "iOS",
             salary: 80000,
             skills: ["Swift", "CoreData"],
             manager: nil)
]

/*
 
 Get all employee names.
 Increase every salary by 10%.
 Find all iOS developers.
 4.Find employees older than 30.
 5.Calculate total salary of all employees.
 6.Calculate average salary.
 7.Sort employees by salary (highest first).
 8.Get all managers.
 9.skill
 Get every skill from every employee.
 10.Count how many employees work in iOS.
 11.Find the highest-paid employee.
 
 */


let empNames = employees.map { $0.name }
print(empNames)


let raisedSalaries = employees.map { $0.salary * 1.10 }
print(raisedSalaries)

let iosDevelopers = employees.filter { $0.department == "iOS" }
print(iosDevelopers.map { $0.name })


let olderThan30 = employees.filter { $0.age > 30 }
print(olderThan30.map { $0.name })


let totalSalary = employees.reduce(0) { $0 + $1.salary }
print(totalSalary)


let averageSalary = totalSalary / Double(employees.count)
print(averageSalary)


let sortedBySalary = employees.sorted { $0.salary > $1.salary }
print(sortedBySalary.map { $0.name })


let allManagers = Set(employees.compactMap { $0.manager })
print(allManagers)


let allSkills = employees.flatMap { $0.skills }
print(allSkills)


let iosCount = employees.filter { $0.department == "iOS" }.count
print(iosCount)


let highestPaid = employees.max { $0.salary < $1.salary }
print(highestPaid?.name ?? "No employees")

