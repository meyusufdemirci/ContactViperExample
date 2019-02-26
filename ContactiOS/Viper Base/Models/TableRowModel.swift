//
//  TableRowModel.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

class TableRowModel: NSObject {
    
    // MARK: Properties
    var component: TableCell!
    var componentModel: ComponentModel!
    
    var projectName: String!
    var componentFullName: String!
    var componentName: String!
    
    var data: Any?
    
    override init() {}
    
    init(component: TableCell, componentModel: ComponentModel, data: Any? = nil) {
        super.init()
        
        self.componentFullName = NSStringFromClass(type(of: component))
        let componentNameArray = componentFullName.components(separatedBy: ".")
        self.projectName = componentNameArray[0] // ContactiOS
        self.componentName = componentNameArray[1] // HomeComponent
        self.component = component
        self.componentModel = componentModel
        self.data = data
    }
}
