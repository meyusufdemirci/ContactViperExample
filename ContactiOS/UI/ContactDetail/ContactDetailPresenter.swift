//
//  ContactDetailPresenter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ContactDetailPresenter {
    var view: ContactDetailViewProtocol!
    var interactor: ContactDetailInteractorInputProtocol!
    var router: ContactDetailWireframeProtocol!
    
    var data: Any?
}

extension ContactDetailPresenter: ContactDetailPresenterProtocol {
    func getContact() {
        guard let contact = data as? Contact else {
            return
        }
        
        view.showContact(contact: contact)
    }
}

extension ContactDetailPresenter: ContactDetailInteractorOutputProtocol {}
