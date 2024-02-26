//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Raife Armstrong on 26/2/24.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws{
        // arrange
        let division = Division(code:"TestDiv")
        let dateToday=Date()
        let dateTomorow=Date(timeIntervalSinceNow: 24*60*60)
        let dateLaterToday=Date(timeIntervalSinceNow: 100)
        let absence1=Absence(date: dateTomorow, students: Student.examples)
        let absence2=Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: dateToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil=actual{
            XCTAssertEqual(absence2.takenOn, actualNotNil.takenOn)
        }
        
    }
    
    func testCreatAbsenceOrGetExistingIfAvailableForAlreadyCreatedAbsence() throws{
        // arrange
        let division = Division(code:"TestDiv")
        let dateToday=Date()
        let absence=Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)

        
        //act
        let actual = division.creatAbsenceOrGetExistingIfAvailable(for: dateToday)
        
        //assert
        XCTAssertNotNil(actual)
        
        XCTAssertEqual(absence.takenOn, actual.takenOn)
        //XCTAssertEqual(absence.studentAbsences, actual.studentAbsences)
        
        
    }
    func testCreatAbsenceOrGetExistingIfAvailableCreatingAbsence() throws{
        // arrange
        let division = Division.examples[0]
        let dateToday=Date()
        
        

        
        //act
        let actual = division.creatAbsenceOrGetExistingIfAvailable(for: dateToday)
        
        //assert
        XCTAssertNotNil(actual)
        
        
        //XCTAssertEqual(absence.studentAbsences, actual.studentAbsences)
        
        
    }

}
