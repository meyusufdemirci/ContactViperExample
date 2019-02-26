//
//  HomeV2Interactor.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomeV2Interactor: ViperBaseInteractor {

    override func prepareViewData(controller: UIViewController, data: Any?) {
        super.prepareViewData(controller: controller, data: data)
        
        let sectionOne = TableSectionModel()
        
        let contactList = getContactFromService()
        for contact in contactList {
            let homeComponentModel = HomeComponentModel(contact: contact)
            let tableRowModel = TableRowModel(component: HomeComponent(), componentModel: homeComponentModel)
            sectionOne.rows.append(tableRowModel)
        }
        
        let tableModel = TableModel(sections: [sectionOne], data: contactList)
        
        presenter.gotViewData(tableModel: tableModel)
    }
    
    func getContactFromService() -> [Contact] {
        var contacts = [Contact]()
        
        let yusuf = Contact(fullname: "Yusuf", gsm: "05311111111")
        contacts.append(yusuf)
        
        let ali = Contact(fullname: "Ali", gsm: "05322222222")
        contacts.append(ali)
        
        let mahmut = Contact(fullname: "Mahmut", gsm: "05333333333")
        contacts.append(mahmut)
        
        return contacts
    }
}

extension HomeV2Interactor: HomeV2InteractorInputProtocol {}
