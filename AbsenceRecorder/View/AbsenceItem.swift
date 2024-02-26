//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence:StudentAbsence
    
    var body: some View {
        HStack{
            Text("\(studentAbsence.student.firstname)")
            Spacer()
            if studentAbsence.isAbsent{
                Button("✔️",action: {toggleAbsent()})
                    
            }else{
                Button("❌",action:{toggleAbsent()})
                    
            }
        }
        //.padding(.horizontal)
    }
    func toggleAbsent(){
        studentAbsence.isAbsent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence:StudentAbsence.example)
    }
}
