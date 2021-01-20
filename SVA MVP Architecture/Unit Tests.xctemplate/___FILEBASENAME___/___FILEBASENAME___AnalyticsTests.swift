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
    func testTagScreen() {
        // Given
        // When
        sut.tagScreen(screenName: .defaultScreen, screenClass: "testscreenClass")
        // Then
        XCTAssertTrue(spyAnalytics.setCurrentScreenCalled, "tagScreen should setCurrentScreen")
        XCTAssertEqual(spyAnalytics.setCurrentScreenSample?.screenName, "Change this screen name to your own", "should match the screenName passed")
        XCTAssertEqual(spyAnalytics.setCurrentScreenSample?.screenClass, "testscreenClass", "should match the screenClass passed")
    }
    func testTagEvent() {
        // Given
        // When
        sut.tagEvent(event: .defaultEvent)
        // Then
        XCTAssertTrue(spyAnalytics.logEventCalled, "tagScreen should log the event")
        XCTAssertEqual(spyAnalytics.logEventEventName, "change_this_event_or_delete", "should match the eventName passed")
    }

}
