//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___AnalyticsTests: XCTestCase {
    
    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___Analytics!
//    var spyINXAnalytics: INXAnalyticsLogicSpy!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Analytics()
    }
    override  func tearDown() {
//        spyINXAnalytics = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Analytics() {
        sut = ___VARIABLE_sceneName___Analytics()
//        spyINXAnalytics = INXAnalyticsLogicSpy()
//        sut.analyticsService = spyINXAnalytics
    }

    // MARK: Tests
    func testEventLoadVC() {
        // Given
        // When
        sut.eventLoadVC()
        // Then
//        XCTAssertTrue(spyINXAnalytics.logEventCalled, "eventLoadVC should logEvent")
//        XCTAssertEqual(spyINXAnalytics.logEventSample?.eventName, "testLogEvent", "should match the eventName in INXAnalyticsLogicSpy")
//        XCTAssertEqual(spyINXAnalytics.logEventSample?.params, ["loadVC" : "OK"], "should match the params in INXAnalyticsLogicSpy")
    }
    func testEventLoadDataOK() {
        // Given
        // When
        sut.eventLoadDataOK()
        // Then
//        XCTAssertTrue(spyINXAnalytics.logEventCalled, "eventLoadDataOK should logEvent")
//        XCTAssertEqual(spyINXAnalytics.logEventSample?.eventName, "testLogEvent", "should match the eventName in INXAnalyticsLogicSpy")
//        XCTAssertEqual(spyINXAnalytics.logEventSample?.params, ["loadData" : "OK"], "should match the params in INXAnalyticsLogicSpy")
    }
    func testEventLoadDataError() {
        // Given
        let serviceError = ServiceError(responseCode: "54321", message: "testEventLoadDataError")
        // When
        sut.eventLoadDataError(serviceError)
        // Then
//        XCTAssertTrue(spyINXAnalytics.logEventCalled, "eventLoadDataError should logEvent")
//        XCTAssertEqual(spyINXAnalytics.logEventSample?.eventName, "testLogEvent", "should match the eventName in INXAnalyticsLogicSpy")
//        XCTAssertEqual(
//            spyINXAnalytics.logEventSample?.params,
//            [
//                "loadData": "Error",
//                "responseCode": serviceError.responseCode,
//                "message": serviceError.message
//            ],
//            "should match the params in INXAnalyticsLogicSpy"
//        )
//        XCTAssertTrue(spyINXAnalytics.isErrorCalled, "eventLoadDataError should send isError")
//        XCTAssertEqual(spyINXAnalytics.isErrorSample?.featureName, "testLogEvent", "should match the eventName in INXAnalyticsLogicSpy")
//        XCTAssertEqual(spyINXAnalytics.isErrorSample?.serviceError.responseCode, "54321", "should match the responseCode in serviceError")
//        XCTAssertEqual(spyINXAnalytics.isErrorSample?.serviceError.message, "testEventLoadDataError", "should match the message in serviceError")
    }
    
}
