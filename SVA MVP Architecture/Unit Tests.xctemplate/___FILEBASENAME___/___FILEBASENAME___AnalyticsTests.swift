//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import OPCommons
import XCTest

class ___VARIABLE_sceneName___AnalyticsTests: XCTestCase {

    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___Analytics!
    var spyAnalytics: OPAnalyticsProtocolSpy!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Analytics()
    }
    override  func tearDown() {
        spyAnalytics = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Analytics() {
        sut = ___VARIABLE_sceneName___Analytics()
        spyAnalytics = OPAnalyticsProtocolSpy()
        sut.analyticsService = spyAnalytics
    }

    // MARK: Tests
    func testEventLoadVC() {
        // Given
        // When
        sut.eventLoadVC()
        // Then
        XCTAssertTrue(spyAnalytics.logEventCalled, "eventLoadVC should logEvent")
        XCTAssertEqual(spyAnalytics.logEventEventName, "___VARIABLE_sceneName___", "should match the eventName passed")
        XCTAssertEqual(spyAnalytics.logEventParameters["loadVC"] as? String, "OK", "should match the params passed")
    }
    func testEventLoadDataOK() {
        // Given
        // When
        sut.eventLoadDataOK()
        // Then
        XCTAssertTrue(spyAnalytics.logEventCalled, "eventLoadDataOK should logEvent")
        XCTAssertEqual(spyAnalytics.logEventEventName, "___VARIABLE_sceneName___", "should match the eventName passed")
        XCTAssertEqual(spyAnalytics.logEventParameters["loadData"] as? String, "OK", "should match the params passed")
    }
    func testEventLoadDataError() {
        // Given
        let serviceError = ServiceError(responseCode: "54321", message: "testEventLoadDataError")
        // When
        sut.eventLoadDataError(serviceError)
        // Then
        XCTAssertTrue(spyAnalytics.logEventCalled, "eventLoadDataError should logEvent")
        XCTAssertEqual(spyAnalytics.logEventEventName, "___VARIABLE_sceneName___", "should match the eventName passed")
        XCTAssertTrue(spyAnalytics.registerErrorCalled, "eventLoadDataError should send isError")
        XCTAssertEqual(spyAnalytics.registerErrorCode, -1001, "should match the responseCode in serviceError")
        XCTAssertEqual(spyAnalytics.registerErrorParameters[NSLocalizedDescriptionKey] as? String, "The request failed.", "should match the eventName passed")
        XCTAssertEqual(spyAnalytics.registerErrorParameters[NSLocalizedFailureReasonErrorKey] as? String, "The response returned a 404.", "should match the eventName passed")
        XCTAssertEqual(spyAnalytics.registerErrorParameters[NSLocalizedRecoverySuggestionErrorKey] as? String, "Does this page exist?", "should match the eventName passed")
    }

}
