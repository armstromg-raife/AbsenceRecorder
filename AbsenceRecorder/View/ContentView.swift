//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    //var divisions:[Division]
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date=Date()
    
    var body: some View {
        NavigationView{
            List(state.divisions, id: \.self.code){ division in
                NavigationLink(destination: AbsenceView(absence: division.creatAbsenceOrGetExistingIfAvailable(for: currentDate))){
                    
                        DivisionItem(division: division)
                    
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }){
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }){
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StateController())
    }
}
