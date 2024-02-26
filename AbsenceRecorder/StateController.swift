//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions:[Division]
    
    init(){
        divisions=Division.examples
    }
}
