//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import Foundation

struct ___VARIABLE_featureName___Entity: Codable {
    let success: Bool
    let code: Int
    let message: String
    let data: Data?
    // MARK: - Data
    struct Data: Codable {}
}
