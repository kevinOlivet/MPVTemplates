//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons
import OPUIElements

protocol ___VARIABLE_featureName___ViewLogic: class {
    func displayData(_ data: ___VARIABLE_featureName___Entity)
    func displayError(type: FullScreenMessageType)
}

final class ___VARIABLE_featureName___ViewController: OPBaseViewController, ___VARIABLE_featureName___ViewLogic {
    
    var presenter: ___VARIABLE_featureName___PresenterLogic
    // TODO: - Replace testLabel with real UI
    private var label: UILabel?
    
    // MARK: Object lifecycle
    init(_ presenter: ___VARIABLE_featureName___PresenterLogic) {
        self.presenter = presenter
        super.init(
            nibName: String(describing: ___VARIABLE_featureName___ViewController.self),
            bundle: OPHelpCenterSDK.resourceBundle  // Change to your bundle
        )
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: - Change to your screenName here and in ___VARIABLE_featureName___Analytics
//        presenter.tagScreen(screenName: .defaultScreen, screenClass: self.classForCoder.description())
        getData()
        addTestLabel()
    }
    // TODO: - Replace testLabel with real UI
    func addTestLabel() {
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 330, height: 21))
        label!.center = CGPoint(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2)
        label!.textAlignment = .center
        label!.text = "___VARIABLE_featureName___ViewController"
        self.view.addSubview(label!)
    }
    
    // MARK: - ___VARIABLE_featureName___ViewLogic
    @objc
    func getData() {
        genericHideMessageView()
        CommonsUtils.showHudWith(nil, dimBackground: false)
        self.presenter.getData()
    }
    func displayData(_ data: ___VARIABLE_featureName___Entity) {
        genericDisplayFullMessage(type: .messageSuccess)
        CommonsUtils.hideHud(false)
        // TODO: - Display data appropriately
//        presenter.tagScreen(screenName: .messageSuccess, screenClass: self.classForCoder.description())
        self.label?.text = data.message
        for item in self.presenter.getEntityArray() {
//            debugPrint("presentData: \(item.key)")
        }
    }
    func displayError(type: FullScreenMessageType) {
        CommonsUtils.hideHud(true)
        genericDisplayFullMessage(type: type, retryAction: #selector(getData))
        // TODO: - Display error appropriately
//        let screenName: ___VARIABLE_featureName___.Screen = type == .messageInternet ? .messageInternet : .messageService
//        presenter.tagScreen(screenName: screenName, screenClass: classForCoder.description())
        self.label?.text = "displayErrorCalled"
        debugPrint("errorMessage called")
    }

    // GettersSetters
    var getLabelText: String? { label?.text }

}
