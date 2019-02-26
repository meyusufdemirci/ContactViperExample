//
//  ViperBaseInteractor.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ViperBaseInteractor {
    
    // MARK: Properties
    var presenter: ViperBaseInteractorOutputProtocol!
    var controller: UIViewController!
    var data: Any?
    
    public required init() {}
}

extension ViperBaseInteractor: ViperBaseInteractorInputProtocol {
    
    @objc func prepareViewData(controller: UIViewController, data: Any?) {
        self.controller = controller
        
        presenter.gotViewData(tableModel: TableModel())
    }
}
