//
//  ContactDetailTableController.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ContactDetailTableController: UITableViewController {
    var presenter: ContactDetailPresenterProtocol!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getContact()
    }
}

extension ContactDetailTableController: ContactDetailViewProtocol {
    func showContact(contact: Contact) {
        self.contact = contact
        tableView.reloadData()
    }
}

extension ContactDetailTableController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(contact.fullname) - \(contact.gsm)"
        return cell
    }
}
