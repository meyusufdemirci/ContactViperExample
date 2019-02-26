//
//  ViperBasePresenter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ViperBasePresenter {
    
    // MARK: Properties
    var view: ViperBaseViewProtocol!
    var interactor: ViperBaseInteractorInputProtocol!
    var router: ViperBaseWireframeProtocol!
    
    var data: Any?
    
    required init() {}
}

extension ViperBasePresenter: ViperBasePresenterProtocol {
    
    func showView(controller: UIViewController) {
        interactor.prepareViewData(controller: controller, data: data)
    }
}

extension ViperBasePresenter: ViperBaseInteractorOutputProtocol {
    
    func gotViewData(tableModel: TableModel) {
        view.reloadTable(tableModel: tableModel)
    }
}
