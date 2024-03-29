//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 5/2/24.
//

import Foundation

class Division: Codable{
    let code:String
    var students:[Student]=[]
    var absences:[Absence]=[]
    
    init(code:String){
        self.code=code
    }
    
    func getAbsence(for date:Date)->Absence?{
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn,to: date,toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func creatAbsenceOrGetExistingIfAvailable(for date: Date)->Absence{
        if let existingAbsence = getAbsence(for: date){
            return existingAbsence
        }else{
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
        
    }
    
    #if DEBUG
    static func createDivision(code:String, of size: Int)->Division{
        let division=Division(code: code)
        
        for i in 1...size {
            division.students.append(Student(firstname:"\(i)", surname:"\(i)", birthDay:Date(timeIntervalSinceNow: -Double((767*i)))))
        }
                    
        
        return division
    }
    
    static let examples=[Division.createDivision(code: "vBY-1", of: 8),Division.createDivision(code: "Cmx-1", of: 7),Division.createDivision(code: "zBY-1", of: 10),Division.createDivision(code: "aBY-1", of: 30)]
    #endif
    
}
