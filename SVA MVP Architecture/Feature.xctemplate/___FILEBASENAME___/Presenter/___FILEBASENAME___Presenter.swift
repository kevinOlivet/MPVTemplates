//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import Foundation

protocol ___VARIABLE_featureName___PresenterLogic {
    func getData()
    func tagScreen(screenName: ___VARIABLE_featureName___Analytics.Screen, screenClass: String)
    func getEntityArray() -> [___VARIABLE_featureName___Entity.Data]
}

final class ___VARIABLE_featureName___Presenter: ___VARIABLE_featureName___PresenterLogic {
    
    weak var view: ___VARIABLE_featureName___ViewLogic?
    var model: (___VARIABLE_featureName___ModelLogic & ___VARIABLE_featureName___DataStore)
    var analytics: ___VARIABLE_featureName___AnalyticsLogic
    var counter = 0

    init(
        _ model: (___VARIABLE_featureName___ModelLogic & ___VARIABLE_featureName___DataStore),
        _ analytics: ___VARIABLE_featureName___AnalyticsLogic
    ) {
        self.model = model
        self.analytics = analytics
    }
    
    func getData() {
        // TODO: - Change to your event
//        analytics.tagEvent(event: .defaultEvent)
        self.model.getData { [weak self] (result) in

            guard let self = self, let view = self.view else { return }

            switch result {
            case .success(_):
                guard let item = self.model.storedEntity else { return }
                view.displayData(item)
            case .failure(let err):
                if self.counter < 3 {
                    self.counter += 1
                    view.displayError(type: .internet)
                } else {
                    view.displayError(type: .service)
                }
            }
        }
    }

    func tagScreen(screenName: ___VARIABLE_featureName___.Screen, screenClass: String) {
        analytics.tagScreen(screenName: screenName, screenClass: screenClass)
    }

    func getEntityArray() -> [___VARIABLE_featureName___Entity.Data] {
        return [self.model.storedEntity.data ?? ___VARIABLE_featureName___Entity.Data()]
    }

}
