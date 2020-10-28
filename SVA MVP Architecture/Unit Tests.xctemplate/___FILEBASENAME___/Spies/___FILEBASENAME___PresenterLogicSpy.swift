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

    // MARK: - Methods
    func getData() {
        getDataCalled = true
    }
    func getEntityArray() -> [___VARIABLE_sceneName___Entity] {
        getEntityArrayCalled = true
        let item = ___VARIABLE_sceneName___Entity(sampleParameter: "getEntityArraySampleFirst", sampleParameter1: 1234)
        return [item]
    }

}
