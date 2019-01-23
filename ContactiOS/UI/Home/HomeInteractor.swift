//
//  HomeInteractor.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 14.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomeInteractor {
    var presenter: HomeInteractorOutputProtocol!
}

extension HomeInteractor: HomeInteractorInputProtocol {
    func getContactFromService() {
        var contacts = [Contact]()
        
        let yusuf = Contact(fullname: "Yusuf", gsm: "05311111111")
        contacts.append(yusuf)
        
        let ali = Contact(fullname: "Ali", gsm: "05322222222")
        contacts.append(ali)
        
        let mahmut = Contact(fullname: "Mahmut", gsm: "05333333333")
        contacts.append(mahmut)
        
        presenter.gotContact(contact: contacts)
    }
}
