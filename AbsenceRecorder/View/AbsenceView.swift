//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import SwiftUI

struct AbsenceView: View {
    let division:Division
    
    var body: some View {
        Text("Absence view - \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0]  )
    }
}
