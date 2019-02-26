//
//  HomeV2Router.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

class HomeV2Router: ViperBaseRouter {}

extension HomeV2Router: HomeV2WireframeProtocol {
    func showContactDetail(contact: Contact) {
        controller.navigationController?
            .pushViewController(
                ContactDetailRouter(data: contact).controller,
                animated: true
        )
    }
}
