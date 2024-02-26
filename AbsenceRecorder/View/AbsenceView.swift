//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import SwiftUI

struct AbsenceView: View {
    let absence:Absence
    
    var body: some View {
        
                
        List(absence.studentAbsences,id:\.self.student.firstname){studentAbsence in
                AbsenceItem(studentAbsence: studentAbsence)
                
            }
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.examples  )
    }
}
