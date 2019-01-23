//
//  HomeProtocols.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 14.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

// MARK: Wireframe
protocol HomeWireframeProtocol: class {
    func showContactDetail(contact: Contact)
}

// MARK: Presenter
protocol HomePresenterProtocol: class {
    var interactor: HomeInteractorInputProtocol! { get set }
    
    func getContact()
    func showContactDetail(contact: Contact)
}

// MARK: Interactor
// Interactor -> Presenter
protocol HomeInteractorOutputProtocol: class {
    func gotContact(contact: [Contact])
}

// Presenter -> Interactor
protocol HomeInteractorInputProtocol: class {
    var presenter: HomeInteractorOutputProtocol!  { get set }
    
    func getContactFromService()
}

// MARK: View
protocol HomeViewProtocol {
    var presenter: HomePresenterProtocol!  { get set }
    
    func showContact(contact: [Contact])
}
