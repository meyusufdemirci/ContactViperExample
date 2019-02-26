//
//  ViperBaseTableController.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class ViperBaseTableController: UITableViewController {
    
    // MARK: Properties
    var presenter: ViperBasePresenterProtocol!
    
    var tableData = TableModel() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.showView(controller: self)
    }
}

extension ViperBaseTableController: ViperBaseViewProtocol {
    
    @objc func reloadTable(tableModel: TableModel) {
        tableData = tableModel
    }
}

extension ViperBaseTableController {
    
    // MARK: Tableview
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableData.sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.sections[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowModel = tableData.sections[indexPath.section].rows[indexPath.row]
        let cellClass = NSClassFromString(rowModel.componentFullName) as! UITableViewCell.Type // componentFullName = ContactiOS.HomeComponent
        
        tableView.register(UINib(nibName: String(describing: cellClass.self), bundle: Bundle(for: cellClass)), forCellReuseIdentifier: rowModel.componentName) // componentName = HomeComponent
        let cell = tableView.dequeueReusableCell(withIdentifier: rowModel.componentName) as! TableCell
        
        cell.configure(tableRowModel: rowModel)
        
        return cell
    }
}
