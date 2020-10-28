//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___ServiceLogicSpy: ___VARIABLE_sceneName___ServiceLogic {
    
    // MARK: - ___VARIABLE_sceneName___ServiceLogic
    var getDataFromAPICalled = false

    enum ___VARIABLE_sceneName___PossibleResults {
        case success, failure, defaultFailure
    }
    var possibleResult: ___VARIABLE_sceneName___PossibleResults = .success

    func getDataFromAPI(_ completion: @escaping (Result<[___VARIABLE_sceneName___Entity], ServiceError>) -> ()) {

        getDataFromAPICalled = true

        switch possibleResult {
        case .success:
            let someResult = ___VARIABLE_sceneName___Entity(
                sampleParameter: "___VARIABLE_sceneName___ViewController",
                sampleParameter1: 4
            )
            completion(.success([someResult]))
        case .failure:
            completion(.failure(ServiceError(responseCode: "-1", message: "err.localizedDescription")))
        case .defaultFailure:
            completion(.failure(ServiceError(responseCode: "1", message: "result invalid")))
        }
    }

}
