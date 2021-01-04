//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons

protocol ___VARIABLE_featureName___ServiceLogic: class {
    func getDataFromAPI(_ completion: @escaping (Result<___VARIABLE_featureName___Entity, APIManagerError>) -> ())
}

final class ___VARIABLE_featureName___Service: ___VARIABLE_featureName___ServiceLogic {

    var reachability: ReachabilityCheckingProtocol = Reachability()

    func getDataFromAPI(_ completion: @escaping (Result<___VARIABLE_featureName___Entity, APIManagerError>) -> ()) {
        guard reachability.isConnectedToNetwork() == true else {
            completion(.failure(.init(.NO_NETWORK)))
            return
        }
        // TODO: - Change the url to the correct one for your feature
        let url = Configuration.Api.contact
        APIManager.shared.get(uri: url) { (result: Result<___VARIABLE_featureName___Entity, APIManagerError>) in
            switch result {
            case .success(let item):
                completion(.success(item))
            case .failure(let err):
                completion(.failure(err))
            }
        }
    }

}
