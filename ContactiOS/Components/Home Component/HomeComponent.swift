//
//  HomeComponent.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright (c) 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomeComponentModel: ComponentModel {

    // MARK: Properties
    var name: String!
    var phone: String!

    init(contact: Contact) {
        self.name = contact.fullname
        self.phone = contact.gsm
    }
}

class HomeComponent: TableCell {

    // MARK: Outlets
    @IBOutlet weak var nameAndPhoneLabel: UILabel!
    
    // MARK: Properties
    var componentModel: HomeComponentModel!

    override func configure(tableRowModel: TableRowModel) {
        super.configure(tableRowModel: tableRowModel)

        guard let componentModel = tableRowModel.componentModel as? HomeComponentModel else { return }
        self.componentModel = componentModel
        
        nameAndPhoneLabel.text = "\(componentModel.name ?? "") - \(componentModel.phone ?? "")"
    }
}
