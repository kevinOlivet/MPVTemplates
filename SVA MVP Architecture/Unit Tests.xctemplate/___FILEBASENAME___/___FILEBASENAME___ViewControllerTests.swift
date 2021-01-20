//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
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
        sut = ___VARIABLE_sceneName___Factory().getInitVC() as? ___VARIABLE_sceneName___ViewController
        spyPresenter = ___VARIABLE_sceneName___PresenterLogicSpy()
        sut.presenter = spyPresenter
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
        XCTAssertEqual(sut.getLabelText, "___VARIABLE_sceneName___ViewController", "label text should match the expected String")
//        XCTAssertTrue(spyPresenter.tagScreenCalled)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenName, .defaultScreen)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenClass, "OPHelpCenter.___VARIABLE_sceneName___ViewController")
    }
    func testDisplayData() {
        // Given
        let data = ___VARIABLE_sceneName___Entity(success: true, code: 0, message: "testMessage", data: MyFeature3Entity.Data())
        // When
        sut.displayData(data)
        // Then
        XCTAssertTrue(spyPresenter.getEntityArrayCalled, "presentData should call the presenter getEntityArrayCalled")
//        XCTAssertEqual(spyPresenter.getEntityArray().first?.key, "getEntityArraySampleFirst", "should match the info in the PresenterLogicSpy")
//        XCTAssertEqual(spyPresenter.getEntityArray().first?.value, true, "should match the info in the PresenterLogicSpy")
        XCTAssertEqual(self.sut.getLabelText, "testSampleParameter", "label text should match the passed String")
//        XCTAssertTrue(spyPresenter.tagScreenCalled)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenName, .messageSuccess)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenClass, "OPHelpCenter.___VARIABLE_sceneName___ViewController")
    }
    func testDisplayError() {
        // Given
        // When
        sut.displayError(type: .messageInternet)
        // Then
        XCTAssertNotNil(sut.fullScreenMessage)
//        XCTAssertTrue(spyPresenter.tagScreenCalled)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenName, .messageInternet)
//        XCTAssertEqual(spyPresenter.tagScreenSample?.screenClass, "OPHelpCenter.___VARIABLE_sceneName___ViewController")
    }

}
