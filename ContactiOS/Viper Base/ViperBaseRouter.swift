//
//  ViperBaseRouter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ViperBaseRouter: NSObject {
    
    // MARK: Properties
    var controller: UIViewController!
    var presenter: ViperBasePresenter!
    var interactor: ViperBaseInteractor!
    
    private var projectName: String!
    private var moduleName: String!
    
    required init(data: Any? = nil) {
        super.init()
        
        projectName = Bundle.main.infoDictionary?["CFBundleName"] as? String // ContactiOS
        moduleName = String(describing: classForCoder).components(separatedBy: "Router")[0] // HomeV2
        
        interactor = (NSClassFromString("\(projectName!).\(moduleName!)Interactor") as! ViperBaseInteractor.Type).init() // ContactiOS.HomeV2Interactor
        presenter = (NSClassFromString("\(projectName!).\(moduleName!)Presenter") as! ViperBasePresenter.Type).init() // ContactiOS.HomeV2Presenter
        controller = (NSClassFromString("\(projectName!).\(moduleName!)TableController") as! ViperBaseTableController.Type).init() // ContactiOS.HomeV2TableController
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.data = data
        presenter.view = controller as? ViperBaseTableController
        (controller as? ViperBaseTableController)?.presenter = presenter
    }
}

extension ViperBaseRouter: ViperBaseWireframeProtocol {}
