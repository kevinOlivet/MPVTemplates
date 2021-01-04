//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ModelLogicSpy: ___VARIABLE_sceneName___ModelLogic, ___VARIABLE_sceneName___DataStore {

    // MARK: - ___VARIABLE_sceneName___DataStore
    var storedEntity: ___VARIABLE_sceneName___Entity! =
        ___VARIABLE_sceneName___Entity(success: true, code: 0, message: "testMessage", data: ___VARIABLE_sceneName___Entity.Data())

    // MARK: - ___VARIABLE_sceneName___ModelLogic
    var getDataCalled = false

    enum ___VARIABLE_sceneName___PossibleResults {
        case success, failure
    }
    var possibleResult: ___VARIABLE_sceneName___PossibleResults = .success

    func getData(_ completion: @escaping (Result<Bool, APIManagerError>) -> ()) {

        getDataCalled = true

        switch possibleResult {
        case .success:
            completion(.success(true))
        case .failure:
            let error = APIManagerError(.BACKEND_ERROR, message: "testErrorMessage", "-1")
            completion(.failure(error))
        }
    }

}
