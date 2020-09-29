//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ModelTests: XCTestCase {
    
    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___Model!
    var spyService: ___VARIABLE_sceneName___ServiceLogicSpy!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Model()
    }
    override  func tearDown() {
        spyService = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Model() {
        spyService = ___VARIABLE_sceneName___ServiceLogicSpy()
        sut = ___VARIABLE_sceneName___Model(spyService)
    }

    // MARK: Tests
    func testGetDataSuccess() {
        // Given
        spyService.possibleResult = .success
        let resultExpectation = expectation(description: "success")
        // When
        sut.getData { result in
            switch result {
            case .success(let boolResult):
                // Then
                XCTAssertTrue(self.spyService.getDataFromAPICalled, "should call the service getDataFromAPI")
                XCTAssertTrue(boolResult, "success result should be true")
                resultExpectation.fulfill()
            case .failure(_):
                XCTFail("Should not fail")
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    func testGetDataFailure() {
        // Given
        spyService.possibleResult = .failure
        let resultExpectation = expectation(description: "failure")
        // When
        sut.getData { result in
            switch result {
            case .success(_):
                XCTFail("Should not succeed")
            case .failure(let error):
                // Then
                XCTAssertTrue(self.spyService.getDataFromAPICalled, "should call the service getDataFromAPI")
                XCTAssertEqual(error.responseCode, "-1", "should match the response code in ___VARIABLE_sceneName___ServiceLogicSpy")
                XCTAssertEqual(error.message, "err.localizedDescription", "should match the response code in ___VARIABLE_sceneName___ServiceLogicSpy")
                resultExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    func testGetDataDefaultFailure() {
        // Given
        spyService.possibleResult = .defaultFailure
        let resultExpectation = expectation(description: "defaultFailure")
        // When
        sut.getData { result in
            switch result {
            case .success(_):
                XCTFail("Should not succeed")
            case .failure(let error):
                // Then
                XCTAssertTrue(self.spyService.getDataFromAPICalled, "should call the service getDataFromAPI")
                XCTAssertEqual(error.responseCode, "1", "should match the response code in ___VARIABLE_sceneName___ServiceLogicSpy")
                XCTAssertEqual(error.message, "result invalid", "should match the response code in ___VARIABLE_sceneName___ServiceLogicSpy")
                resultExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
}
