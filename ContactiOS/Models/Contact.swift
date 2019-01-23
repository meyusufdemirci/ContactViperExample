//
//  Contact.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 23.01.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import Foundation

class Contact {
    
    var fullname: String
    var gsm: String
    
    init(fullname: String, gsm: String) {
        self.fullname = fullname
        self.gsm = gsm
    }
}
