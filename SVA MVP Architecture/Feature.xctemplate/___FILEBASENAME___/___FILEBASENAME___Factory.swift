//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import UIKit

final public class ___VARIABLE_featureName___Factory {

    public init() {}

    public func getInitVC() -> UIViewController {
        let service = ___VARIABLE_featureName___Service()
        let model = ___VARIABLE_featureName___Model(service)
        let analytics = ___VARIABLE_featureName___Analytics()
        let presenter = ___VARIABLE_featureName___Presenter(model, analytics)
        let viewController = ___VARIABLE_featureName___ViewController(presenter)
        
        presenter.view = viewController
        return viewController
    }
    
}
