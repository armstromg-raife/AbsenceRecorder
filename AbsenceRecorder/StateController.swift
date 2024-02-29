//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Raife Armstrong on 26/2/24.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions:[Division] = []
    
    init(){
        //loadFromFile()
        divisions=Division.examples
    }
    
    func palthToAFileInDocuments(json:String) -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("divisions.json")
        return url
    }
    func loadFromFile(){
        let url=palthToAFileInDocuments(json:"divisions.json")
//        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//        let userPath = paths[0]
//        let url = userPath.appendingPathComponent("divisions.json")
        if let data = try? Data(contentsOf: url){
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data){
                divisions = loaded
            }
        }
    }
    
    func saveToFile(){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions){
            if let json = String(data: encoded, encoding: .utf8) {
                let url=palthToAFileInDocuments(json:"divisions.json")
//                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//                let userPath = paths[0]
//                let url = userPath.appendingPathComponent("divisions.json")
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("unable to form json string")
            }
        }
    }
}
