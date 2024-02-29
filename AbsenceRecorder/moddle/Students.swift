//
//  Students.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 5/2/24.
//

import Foundation

class Student: Codable {
    let firstname:String
    let surname:String
    let birthDay:Date
    
    init(firstname:String, surname:String, birthDay:Date){
        self.firstname=firstname
        self.surname=surname
        self.birthDay=birthDay
    }
    
    #if DEBUG
    static let examples=[Student(firstname: "student", surname: "example", birthDay: Date())]
    #endif
}

