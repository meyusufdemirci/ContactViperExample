//
//  TableSectionModel.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

class TableSectionModel: NSObject {
    
    // MARK: Properties
    var rows: [TableRowModel] = []
    
    override init() {}
    
    init(rows: [TableRowModel]? = nil) {
        self.rows = rows ?? []
    }
}
