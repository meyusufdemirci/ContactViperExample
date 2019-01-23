//
//  ContactDetailInteractor.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ContactDetailInteractor {
    var presenter: ContactDetailInteractorOutputProtocol!
}

extension ContactDetailInteractor: ContactDetailInteractorInputProtocol {}
