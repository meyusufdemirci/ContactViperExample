//
//  TableModel.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

class TableModel: NSObject {
    
    // MARK: Properties
    var sections: [TableSectionModel] = []
    var data: Any?
    
    override init() {}
    
    init(sections: [TableSectionModel], data: Any? = nil) {
        self.sections = sections
        self.data = data
    }
}
