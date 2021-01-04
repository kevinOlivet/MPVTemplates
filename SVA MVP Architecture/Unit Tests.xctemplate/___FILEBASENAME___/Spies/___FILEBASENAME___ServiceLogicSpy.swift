//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ServiceLogicSpy: ___VARIABLE_sceneName___ServiceLogic {
    
    // MARK: - ___VARIABLE_sceneName___ServiceLogic
    var getDataFromAPICalled = false

    enum ___VARIABLE_sceneName___PossibleResults {
        case success, failure
    }
    var possibleResult: ___VARIABLE_sceneName___PossibleResults = .success

    func getDataFromAPI(_ completion: @escaping (Result<___VARIABLE_sceneName___Entity, APIManagerError>) -> ()) {

        getDataFromAPICalled = true

        switch possibleResult {
        case .success:
            let someResult  = ___VARIABLE_sceneName___Entity(
                success: true,
                code: 0,
                message: "testMessage",
                data: ___VARIABLE_sceneName___Entity.Data()
            )
            completion(.success(someResult))
        case .failure:
            completion(.failure(APIManagerError(.BACKEND_ERROR, message: "testErrorMessage", "-1")))
        }
    }

}
