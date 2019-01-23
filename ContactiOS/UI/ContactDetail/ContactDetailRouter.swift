//
//  ContactDetailRouter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ContactDetailRouter: NSObject {
    var controller: ContactDetailTableController!
    var presenter: ContactDetailPresenter!
    var interactor: ContactDetailInteractor!
    
    required init(data: Any? = nil) {
        super.init()
        
        interactor = ContactDetailInteractor()
        presenter = ContactDetailPresenter()
        controller = ContactDetailTableController()
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        presenter.data = data
        controller.presenter = presenter
    }
}

extension ContactDetailRouter: ContactDetailWireframeProtocol {}
