//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OHHTTPStubs
import OPCommons
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
        OHHTTPStubs.removeAllStubs()
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Service() {
        sut = ___VARIABLE_sceneName___Service()
    }

    // MARK: Tests
    func testGetDataFromAPISuccess() {
        // Given
        // TODO: - Change to json file for your feature
        let fakeJsonFile = "GET_feature_toggle_200.json"
        let bundle = OPHelpCenterSDK.resourceBundle // Change to your bundle

        // TODO: - Change to url for your feature
        let url = Configuration.Api.featureToggle

        guard let urlPath = URL(string: url)?.path else { XCTFail("testGetDataFromAPI url error"); return }
        stub(condition: isPath(urlPath)) { _ in
            return fixture(
                filePath: OHPathForFileInBundle(fakeJsonFile, bundle)!,
                status: 200,
                headers: ["Content-Type" as NSObject: "application/json" as AnyObject]
            )
        }
        let resultExpectation = self.expectation(description: "calls the callback with a resource object")
        // When
        sut.getDataFromAPI { result in
            switch result {
            case .success(let result):
                // Then
                XCTAssertEqual(result.message, "You are using feedback stubs baby!", "should match the data in the JSON")
                XCTAssertEqual(result.success, true, "should match the data in the JSON")
                XCTAssertEqual(result.code, 0, "should match the data in the JSON")
                resultExpectation.fulfill()
            case .failure(_):
                XCTFail("Should not fail")
            }
        }
        self.waitForExpectations(timeout: 5.0, handler: nil)
    }
    func testGetDataFromAPIFail() {
        // Given
        // TODO: - Change to url for your feature
        let url = Configuration.Api.featureToggle
        guard let urlPath = URL(string: url)?.path else { XCTFail("testGetDataFromAPI url error"); return }

        stub(condition: isPath(urlPath)) { _ in
            let notConnectedError = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue)
            return OHHTTPStubsResponse(error: notConnectedError)
        }
        let resultExpectation = self.expectation(description: "down network")
        // When
        sut.getDataFromAPI { result in
            switch result {
            case .success(_):
                XCTFail("Should not succeed")
            case .failure(let error):
                // Then
                XCTAssertNotNil(error)
                XCTAssertEqual(error.statusCode, "500", "should match the response code in ___VARIABLE_sceneName___Service")
                XCTAssertEqual(error.error, .BACKEND_ERROR, "should match the response code in ___VARIABLE_sceneName___Service")
                resultExpectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: 5.0, handler: nil)
    }
    func testGetDataFromAPINoInternet() {
        // Given
        let reachabilitySpy = ReachabilitySpy()
        reachabilitySpy.isConnectedToNetworkReturnValue = false
        sut.reachability = reachabilitySpy

        let resultExpectation = self.expectation(description: "network is down!")

        // When
        sut.getDataFromAPI { result in
            switch result {
            case .success(_):
                XCTFail("Should not succeed")
            case .failure(let error):
                // Then
                XCTAssertNotNil(error)
                XCTAssertEqual(error.statusCode, "-1", "should match the response code in OPFeatureLoaderService")
                XCTAssertEqual(error.error, .NO_NETWORK, "should match the response code in OPFeatureLoaderService")
                resultExpectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: 5.0, handler: nil)
    }
}
