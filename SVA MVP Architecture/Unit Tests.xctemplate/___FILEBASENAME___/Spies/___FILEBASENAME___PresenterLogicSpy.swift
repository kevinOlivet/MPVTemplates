//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___PresenterLogicSpy: ___VARIABLE_sceneName___PresenterLogic {

    var getDataCalled = false
    var getEntityArrayCalled = false
    var tagScreenCalled = false

    var tagScreenSample: (screenName: ___VARIABLE_sceneName___Analytics.Screen, screenClass: String)?

    // MARK: - Methods
    func getData() {
        getDataCalled = true
    }
    func getEntityArray() -> [___VARIABLE_sceneName___Entity] {
        getEntityArrayCalled = true
        let item = ___VARIABLE_sceneName___Entity(success: true, code: 0, message: "testMessage", data: MyFeature3Entity.Data())
        return [item.data!]
    }
    func tagScreen(screenName: ___VARIABLE_sceneName___Analytics.Screen, screenClass: String) {
        tagScreenCalled = true
        tagScreenSample = (screenName, screenClass)
    }

}
