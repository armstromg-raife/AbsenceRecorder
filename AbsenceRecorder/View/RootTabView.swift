//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(StateController())
    }
}
