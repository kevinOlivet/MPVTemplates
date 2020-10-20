//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_featureName___ViewLogic: class {
    func displayData(_ data: ___VARIABLE_featureName___Entity)
    func displayError(_ title: String, message: String)
}

final class ___VARIABLE_featureName___ViewController: UIViewController, ___VARIABLE_featureName___ViewLogic {
    
    var presenter: ___VARIABLE_featureName___PresenterLogic
    // TODO: - Replace testLabel with real UI
    private var label: UILabel?
    
    // MARK: Object lifecycle
    init(_ presenter: ___VARIABLE_featureName___PresenterLogic) {
        self.presenter = presenter
        super.init(
            nibName: String(describing: ___VARIABLE_featureName___ViewController.self),
            bundle: Bundle(for: ___VARIABLE_featureName___ViewController.classForCoder())
        )
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.getData()
        addTestLabel()
    }
    // TODO: - Replace testLabel with real UI
    func addTestLabel() {
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 330, height: 21))
        label!.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
        label!.textAlignment = .center
        label!.text = "___VARIABLE_featureName___ViewController"
        self.view.addSubview(label!)
    }
    
    // MARK: - ___VARIABLE_featureName___ViewLogic
    func displayData(_ data: ___VARIABLE_featureName___Entity) {
        // TODO: - Display data appropriately
        self.label?.text = data.sampleParameter
        for item in self.presenter.getEntityArray() {
            debugPrint("presentData: \(item.sampleParameter)")
        }
    }
    func displayError(_ title: String, message: String) {
        // TODO: - Display error appropriately
        self.label?.text = message
        debugPrint("errorMessage called")
    }

    // GettersSetters
    var getLabelText: String? { label?.text }

}
