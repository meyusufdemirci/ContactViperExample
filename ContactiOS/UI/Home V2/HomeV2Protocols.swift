//
//  HomeV2Protocols.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

// MARK: Wireframe
protocol HomeV2WireframeProtocol: ViperBaseWireframeProtocol {
    func showContactDetail(contact: Contact)
}

// MARK: Presenter
protocol HomeV2PresenterProtocol: ViperBasePresenterProtocol {
    func showContactDetail(contact: Contact)
}

// MARK: Interactor
// Interactor -> Presenter
protocol HomeV2InteractorOutputProtocol: ViperBaseInteractorOutputProtocol {}

// Presenter -> Interactor
protocol HomeV2InteractorInputProtocol: ViperBaseInteractorInputProtocol {}

// MARK: View
protocol HomeV2ViewProtocol: ViperBaseViewProtocol {}
