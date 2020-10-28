//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ModelLogicSpy: ___VARIABLE_sceneName___ModelLogic, ___VARIABLE_sceneName___DataStore {

    // MARK: - ___VARIABLE_sceneName___DataStore
    var storedEntityArray: [___VARIABLE_sceneName___Entity] =
        [___VARIABLE_sceneName___Entity(sampleParameter: "testSampleParameterFromSpy", sampleParameter1: 1234)]

    // MARK: - ___VARIABLE_sceneName___ModelLogic
    var getDataCalled = false

    enum ___VARIABLE_sceneName___PossibleResults {
        case success, failure
    }
    var possibleResult: ___VARIABLE_sceneName___PossibleResults = .success

    func getData(_ completion: @escaping (Result<Bool, ServiceError>) -> ()) {

        getDataCalled = true

        switch possibleResult {
        case .success:
            completion(.success(true))
        case .failure:
            let error = ServiceError(responseCode: "123", message: "testMessageFromSpy")
            completion(.failure(error))
        }
    }

}
