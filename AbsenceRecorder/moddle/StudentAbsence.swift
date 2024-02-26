//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import Foundation

class StudentAbsence:ObservableObject {
    let student:Student
    @Published var isAbsent:Bool
    
    init(student:Student){
        self.student=student
        isAbsent=false
    }
    
    #if DEBUG
    static let example=StudentAbsence(student: Student(firstname: "bob", surname: "bobyinson", birthDay: Date()))
    
    #endif
}
