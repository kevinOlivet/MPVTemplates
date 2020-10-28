//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons

protocol ___VARIABLE_featureName___ServiceLogic: class {
    func getDataFromAPI(_ completion: @escaping (Result<[___VARIABLE_featureName___Entity], ServiceError>) -> () )
}

final class ___VARIABLE_featureName___Service: ___VARIABLE_featureName___ServiceLogic {
    
    func getDataFromAPI(_ completion: @escaping (Result<[___VARIABLE_featureName___Entity], ServiceError>) -> ()) {
        
        // TODO: - Fake data until I know how RestKitClient will be implemented
        // Should be Protocol Oriented to allow for mocking
        let someResult = ___VARIABLE_featureName___Entity(
            sampleParameter: "___VARIABLE_featureName___ViewController",
            sampleParameter1: 4
        )
        completion(.success([someResult]))
        
        
//        RestKitClient.sharedInstance.getData( { result, err in
//            if let err = err {
//                debugPrint("Error getting result: \(err)")
//                completion(.failure(ServiceError(responseCode: "-1", message: err.localizedDescription)))
//            } else if let result = result {
//                var resultArray: [___VARIABLE_featureName___Entity] = []
//                for item in result {
//                    let individual = ___VARIABLE_featureName___Entity(
//                        sampleParameter: item.sampleParameter,
//                        sampleParameter1: item.sampleParameter1
//                    )
//                    resultArray.append(individual)
//                }
//                completion(.success(resultArray))
//            } else {
//                completion(.failure(ServiceError(responseCode: "1", message: "result invalid")))
//            }
//        }
    }
    
}
