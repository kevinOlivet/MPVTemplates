//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ViewLogicSpy: ___VARIABLE_sceneName___ViewLogic {
    
    var displayDataCalled = false
    var displayErrorCalled = false
    
    var displayDataSample: ___VARIABLE_sceneName___Entity?
    var displayErrorSample: String?
    
    // MARK: - Methods
    func displayData(_ data: ___VARIABLE_sceneName___Entity) {
        displayDataCalled = true
        displayDataSample = data
    }
    func displayError(_ title: String, message: String) {
        displayErrorCalled = true
        displayErrorSample = message
    }
    
}
