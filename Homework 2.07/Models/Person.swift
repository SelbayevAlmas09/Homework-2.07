//
//  Person.swift
//  Homework 2.07
//
//  Created by Almas Selbayev on 24.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    let test =  "Test"
    
    var fullname: String {
        "\(surname) \(name)"
    }
    
    static func getPersonList() -> [Person] {
        let dataManager = DataManager()
        var persons: [Person] = []
        
        let names = dataManager.name.shuffled()
        let surnames = dataManager.surname.shuffled()
        let phones = dataManager.phone.shuffled()
        let emails = dataManager.email.shuffled()
        
        for index in 0..<names.count {
            persons.append(Person(name: names[index],
                                  surname: surnames[index],
                                  phone: phones[index],
                                  email: emails[index]))
        }
        
        return persons
    }
    
}


