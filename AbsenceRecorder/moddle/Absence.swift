//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import Foundation

class Absence: Codable {
    let takenOn:Date
    var studentAbsences:[StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map{StudentAbsence(student: $0)}
    }
    
    #if DEBUG
    static let examples = Absence(date: Date(), students: Student.examples)
    #endif
}
