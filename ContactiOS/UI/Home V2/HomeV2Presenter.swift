//
//  HomeV2Presenter.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

class HomeV2Presenter: ViperBasePresenter {}

extension HomeV2Presenter: HomeV2PresenterProtocol {
    func showContactDetail(contact: Contact) {
        (router as? HomeV2WireframeProtocol)?.showContactDetail(contact: contact)
    }
}

extension HomeV2Presenter: HomeV2InteractorOutputProtocol {}
