//
//  HomePresenter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 14.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomePresenter {
    var view: HomeViewProtocol!
    var interactor: HomeInteractorInputProtocol!
    var router: HomeWireframeProtocol!
}

extension HomePresenter: HomePresenterProtocol {
    func getContact() {
        interactor.getContactFromService()
    }
    
    func showContactDetail(contact: Contact) {
        router.showContactDetail(contact: contact)
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    func gotContact(contact: [Contact]) {
        view.showContact(contact: contact)
    }
}
