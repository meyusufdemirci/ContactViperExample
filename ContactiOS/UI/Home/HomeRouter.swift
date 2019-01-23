//
//  HomeRouter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 14.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomeRouter: NSObject {
    var controller: HomeTableController!
    var presenter: HomePresenter!
    var interactor: HomeInteractor!
    
    required override init() {
        super.init()
        
        interactor = HomeInteractor()
        presenter = HomePresenter()
        controller = HomeTableController()
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        controller.presenter = presenter
    }
}

extension HomeRouter: HomeWireframeProtocol {
    func showContactDetail(contact: Contact) {
        controller.navigationController?
            .pushViewController(
                ContactDetailRouter(data: contact).controller,
                animated: true
        )
    }
}
