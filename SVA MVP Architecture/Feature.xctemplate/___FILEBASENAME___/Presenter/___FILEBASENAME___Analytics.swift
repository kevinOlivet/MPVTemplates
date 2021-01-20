//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons

protocol ___VARIABLE_featureName___AnalyticsLogic {
    func tagScreen(screenName: ___VARIABLE_featureName___Analytics.Screen, screenClass: String)
    func tagEvent(event: ___VARIABLE_featureName___Analytics.Event)
}

final class ___VARIABLE_featureName___Analytics: ___VARIABLE_featureName___AnalyticsLogic {
    
    var analyticsService: OPAnalyticsProtocol = OPAnalytics.shared

    // TODO: Change the Event and Screen to yours
    enum Event: String {
        case defaultEvent = "change_this_event_or_delete"
    }
    enum Screen: String {
        case defaultScreen = "Change this screen name to your own"
        case messageSuccess = "Mensaje de ayuda enviado con éxito"
        case messageInternet = "Error al enviar mensaje de ayuda (Reintentar)"
        case messageService = "Error al enviar mensaje de ayuda (Volver)"
    }

    // MARK: - Methods
    func tagScreen(screenName: ___VARIABLE_featureName___Analytics.Screen, screenClass: String) {
        analyticsService.setCurrentScreen(screenName.rawValue, screenClass: screenClass)
    }
    func tagEvent(event: ___VARIABLE_featureName___Analytics.Event) {
        analyticsService.logEvent(eventName: event.rawValue, parameters: nil)
    }

}
