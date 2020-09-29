//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_featureName___ModelLogic {
    func getData( _ completion: @escaping (Result<Bool, ServiceError>) -> ())
}

protocol ___VARIABLE_featureName___DataStore {
    var storedEntityArray: [___VARIABLE_featureName___Entity] { get }
}

class ___VARIABLE_featureName___Model: ___VARIABLE_featureName___ModelLogic, ___VARIABLE_featureName___DataStore {
    
    var service: ___VARIABLE_featureName___ServiceLogic
    var storedEntityArray: [___VARIABLE_featureName___Entity] = []
    
    init(_ service:  ___VARIABLE_featureName___ServiceLogic) {
        self.service = service
    }
    
    func getData( _ completion: @escaping (Result<Bool, ServiceError>) -> ()) {
        self.service.getDataFromAPI { result in
            switch result {
            case .success(let storedEntityArray):
                self.storedEntityArray = storedEntityArray
                completion(.success(true))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
