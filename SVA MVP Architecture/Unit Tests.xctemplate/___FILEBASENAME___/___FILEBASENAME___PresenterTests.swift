//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___Presenter!
    var spyView: ___VARIABLE_sceneName___ViewLogicSpy!
    var spyModel: ___VARIABLE_sceneName___ModelLogicSpy!
    var spyAnalytics: ___VARIABLE_sceneName___AnalyticsLogicSpy!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }
    override  func tearDown() {
        spyAnalytics = nil
        spyModel = nil
        spyView = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___Presenter() {
        spyModel = ___VARIABLE_sceneName___ModelLogicSpy()
        spyAnalytics = ___VARIABLE_sceneName___AnalyticsLogicSpy()
        sut = ___VARIABLE_sceneName___Presenter(spyModel, spyAnalytics)

        spyView = ___VARIABLE_sceneName___ViewLogicSpy()
        sut.view = spyView
    }

    // MARK: Tests
    func testGetDataSuccess() {
        // Given
        spyModel.possibleResult = .success
        // When
        sut.getData()
        // Then
        XCTAssertTrue(spyAnalytics.eventLoadVCCalled, "getData should send the eventLoadVC")
        XCTAssertTrue(spyAnalytics.eventLoadDataOKCalled, "getData should send the eventLoadDataOK")
        XCTAssertTrue(spyView.displayDataCalled, "success should display the data")
        XCTAssertEqual(spyView.displayDataSample?.sampleParameter, "testSampleParameterFromSpy", "should match the sampleParameter in ___VARIABLE_sceneName___ModelLogicSpy")
    }
    func testGetDataFailure() {
        // Given
        spyModel.possibleResult = .failure
        // When
        sut.getData()
        // Then
        XCTAssertTrue(spyAnalytics.eventLoadVCCalled, "getData should send the eventLoadVC event")
        XCTAssertTrue(spyAnalytics.eventLoadDataErrorCalled, "getData should send the eventLoadDataOK")
        XCTAssertEqual(spyAnalytics.eventLoadDataErrorSample?.responseCode, "123", "should match the error in the ___VARIABLE_sceneName___AnalyticsLogicSpy")
        XCTAssertEqual(spyAnalytics.eventLoadDataErrorSample?.message, "testMessageFromSpy", "should match the error in the ___VARIABLE_sceneName___AnalyticsLogicSpy")
        XCTAssertTrue(spyView.displayErrorCalled, "failure should display the error")
        XCTAssertEqual(spyView.displayErrorSample, "testMessageFromSpy", "should match the sampleParameter in ___VARIABLE_sceneName___ModelLogicSpy")
    }
    func testGetEntityArray() {
        // Given
        // When
        let result = sut.getEntityArray()
        // Then
        XCTAssertEqual(result.first?.sampleParameter, "testSampleParameterFromSpy", "should match the sampleParameter in ___VARIABLE_sceneName___ModelLogicSpy")
        XCTAssertEqual(result.first?.sampleParameter1, 1234, "should match the sampleParameter1 in ___VARIABLE_sceneName___ModelLogicSpy")
    }

}
