//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

//import OHHTTPStubs
@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ServiceTests: XCTestCase {
    
    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___Service!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Service()
    }
    override  func tearDown() {
//        OHHTTPStubs.removeAllStubs()
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Service() {
        sut = ___VARIABLE_sceneName___Service()
    }

    // MARK: Tests
    // TODO: - Adjust when I know how ReskKitClient will be implemented
//    func testGetDataFromAPISuccess() {
//        // Given
//        // TODO: - add fake json file for the endpoint
//        let fakeJsonFile = "POST_Fake_Json_File.json"
//        let bundle = Bundle(for: setup___VARIABLE_sceneName___ViewController.classForCoder())
//        let url = "Configuration.Api.someEndPoint"
//
//        guard let urlPath = URL(string: url)?.path else { XCTFail("testGetDataFromAPI url error"); return }
//        stub(condition: isPath(urlPath)) { _ in
//            return fixture(
//                filePath: OHPathForFileInBundle(fakeJsonFile, bundle!)!,
//                status: 200,
//                headers: ["Content-Type" as NSObject: "application/json" as AnyObject]
//            )
//        }
//        let resultExpectation = self.expectation(description: "calls the callback with a resource object")
//        // When
//        sut.getDataFromAPI { result in
//            switch result {
//            case .success(let result):
//                // Then
//                XCTAssertEqual(result.first?.sampleParameter, "testSampleParameter", "should match the data in the JSON")
//                XCTAssertEqual(result.first?.sampleParameter1, 12345, "should match the data in the JSON")
//                resultExpectation.fulfill()
//            case .failure(let error):
//                XCTFail("Should not fail")
//            }
//        }
//        self.waitForExpectations(timeout: 1.0, handler: nil)
//    }
//    func testGetDataFromAPIFail() {
//        // Given
//        let url = "Configuration.Api.someEndPoint"
//        guard let urlPath = URL(string: url)?.path else { XCTFail("testGetDataFromAPI url error"); return }
//
//        stub(condition: isPath(urlPath)) { _ in
//            let notConnectedError = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue)
//            return OHHTTPStubsResponse(error: notConnectedError)
//        }
//        let resultExpectation = self.expectation(description: "down network")
//        // When
//        sut.getDataFromAPI { result in
//            switch result {
//            case .success(_):
//                XCTFail("Should not succeed")
//            case .failure(let error):
//                // Then
//                XCTAssertNotNil(error)
//                XCTAssertEqual(error.responseCode, "-1", "should match the response code in setup___VARIABLE_sceneName___Service")
//                XCTAssertEqual(error.message, error.localizedDescription, "should match the response code in setup___VARIABLE_sceneName___Service")
//                resultExpectation.fulfill()
//            }
//        }
//        self.waitForExpectations(timeout: 1.0, handler: nil)
//    }
//    func testGetDataFromAPIDefaultFail() {
//        // Given
//        let resultExpectation = self.expectation(description: "failure")
//        // When
//        sut.getDataFromAPI { result in
//            switch result {
//            case .success(_):
//                XCTFail("Should not succeed")
//            case .failure(let error):
//                // Then
//                XCTAssertNotNil(error)
//                XCTAssertEqual(error.responseCode, "1", "should match the response code in setup___VARIABLE_sceneName___Service")
//                XCTAssertEqual(error.message, "result invalid", "should match the message in setup___VARIABLE_sceneName___Service")
//                resultExpectation.fulfill()
//            }
//        }
//        self.waitForExpectations(timeout: 1.0, handler: nil)
//    }

}
