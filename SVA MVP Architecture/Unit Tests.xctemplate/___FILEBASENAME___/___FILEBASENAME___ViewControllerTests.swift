//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {

    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___ViewController!
    var spyPresenter: ___VARIABLE_sceneName___PresenterLogicSpy!
    var window: UIWindow!

    // MARK: Test lifecycle
    override  func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }
    override  func tearDown() {
        spyPresenter = nil
        sut = nil
        window = nil
        super.tearDown()
    }

    // MARK: Test setup
    func setup___VARIABLE_sceneName___ViewController() {
        spyPresenter = ___VARIABLE_sceneName___PresenterLogicSpy()
        sut = ___VARIABLE_sceneName___ViewController(spyPresenter)
        loadView()
    }
    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Tests
    func testViewDidLoad() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut, "sut should be instantiated")
        XCTAssertTrue(spyPresenter.getDataCalled, "viewDidLoad should call presenter getData")
        XCTAssertEqual(sut.getLabelText, "___VARIABLE_sceneName___ViewController", "label text should match the default String")
    }
    func testDisplayData() {
        // Given
        let data = ___VARIABLE_sceneName___Entity(sampleParameter: "testSampleParameter", sampleParameter1: 1234)
        // When
        sut.displayData(data)
        // Then
        XCTAssertTrue(spyPresenter.getEntityArrayCalled, "presentData should call the presenter getEntityArrayCalled")
        XCTAssertEqual(spyPresenter.getEntityArray().first?.sampleParameter, "getEntityArraySampleFirst", "should match the info in the PresenterLogicSpy")
        XCTAssertEqual(spyPresenter.getEntityArray().first?.sampleParameter1, 1234, "should match the info in the PresenterLogicSpy")
        
        let labelExpectation = expectation(description: "Should ask the view controller to display the result")
        DispatchQueue.main.async {
            if self.sut.getLabelText ==  "testSampleParameter" {
                XCTAssertEqual(self.sut.getLabelText, "testSampleParameter", "label text should match the passed String")
                labelExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    func testDisplayError() {
        // Given
        let message = "testMessage"
        // When
        sut.displayError("Ups", message: message)
        // Then
        // Test the asynchronous
        let labelExpectation = expectation(description: "Should ask the view controller to display the result")
        DispatchQueue.main.async {
            if self.sut.getLabelText ==  "testMessage" {
                XCTAssertEqual(self.sut.getLabelText, "testMessage", "label text should match the passed String")
                labelExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }

}
