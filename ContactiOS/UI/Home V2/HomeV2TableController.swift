//
//  HomeV2TableController.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 25.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class HomeV2TableController: ViperBaseTableController {
    
    // MARK: Properties
    var contactList: [Contact]?
    
    override func reloadTable(tableModel: TableModel) {
        super.reloadTable(tableModel: tableModel)
        
        contactList = tableModel.data as? [Contact]
    }
}

extension HomeV2TableController: HomeV2ViewProtocol {}

extension HomeV2TableController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let contact = contactList?[indexPath.row] {
            (presenter as? HomeV2PresenterProtocol)?.showContactDetail(contact: contact)
        }
    }
}
