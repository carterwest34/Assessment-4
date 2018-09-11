//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School {
    let name: String
    var numberOfStudents: Int
    var publicOrPrivateSchool: String
    let yearBuilt: Int
    
    init(name: String, numberOfStudents: Int, publicOrPrivateSchool: String, yearBuilt: Int) {
        self.name = name
        self.numberOfStudents = numberOfStudents
        self.publicOrPrivateSchool = publicOrPrivateSchool
        self.yearBuilt = yearBuilt
        
    }
    func schoolDescription() {
        print("\(name) was founded in \(yearBuilt) and has \(numberOfStudents) currently in attendance.")
    }
}
let school = School(name: "Barren County High School", numberOfStudents: 1200, publicOrPrivateSchool: "Public", yearBuilt: 1930)
school.schoolDescription()

//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class HighSchool: School {
    var rivalHighSchool: String
    var schoolMascot: String
    
    init(name: String, numberOfStudents: Int, publicOrPrivateSchool: String, yearBuilt: Int, rivalHighSchool: String, schoolMascot: String) {
        self.rivalHighSchool = rivalHighSchool
        self.schoolMascot = schoolMascot
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivateSchool: publicOrPrivateSchool, yearBuilt: yearBuilt)
    }
    func pepRally() {
        print("\(name) is the best! \(rivalHighSchool) is awful!")
    }
     override func schoolDescription() {
        print("\(name) is the best in the state since \(yearBuilt)! Go \(schoolMascot)'s!")
    }
}
var highSchool = HighSchool(name: "Barren County High School", numberOfStudents: 1200, publicOrPrivateSchool: "Public", yearBuilt: 1930, rivalHighSchool: "Glasgow High School", schoolMascot: "Trojans")
highSchool.schoolDescription()
highSchool.pepRally()

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighSchool: HighSchool {
    var sizeOfCastle: Double
    var numberOfSecretPassages: Int
    
    init(name: String, numberOfStudents: Int, publicOrPrivateSchool: String, yearBuilt: Int, rivalHighSchool: String, schoolMascot: String, sizeOfCastle: Double, numberOfSecretPassages: Int) {
        self.sizeOfCastle = sizeOfCastle
        self.numberOfSecretPassages = numberOfSecretPassages
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivateSchool: publicOrPrivateSchool, yearBuilt: yearBuilt, rivalHighSchool: rivalHighSchool, schoolMascot: schoolMascot)
    }
    override func pepRally() {
        print("\(name) is the most magical school on earth! It's castle is \(sizeOfCastle) square feet, and it has \(numberOfSecretPassages) secret passagews! Hurray!")
    }
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
}
var magicalHighSchool = MagicalHighSchool(name: "Hogwarts", numberOfStudents: 2000, publicOrPrivateSchool: "Private", yearBuilt: 1950, rivalHighSchool: "Barren County High School", schoolMascot: "Wizards", sizeOfCastle: 29403.50, numberOfSecretPassages: 12345)

magicalHighSchool.schoolDescription()
magicalHighSchool.pepRally()
magicalHighSchool.quidditchMatch()

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.



