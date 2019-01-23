//
//  ContactDetailProtocols.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

// MARK: Wireframe
protocol ContactDetailWireframeProtocol: class {}

// MARK: Presenter
protocol ContactDetailPresenterProtocol: class {
    var interactor: ContactDetailInteractorInputProtocol! { get set }
    
    func getContact()
}

// MARK: Interactor
// Interactor -> Presenter
protocol ContactDetailInteractorOutputProtocol: class {}

// Presenter -> Interactor
protocol ContactDetailInteractorInputProtocol: class {
    var presenter: ContactDetailInteractorOutputProtocol!  { get set }
}

// MARK: View
protocol ContactDetailViewProtocol {
    var presenter: ContactDetailPresenterProtocol!  { get set }
    
    func showContact(contact: Contact)
}
