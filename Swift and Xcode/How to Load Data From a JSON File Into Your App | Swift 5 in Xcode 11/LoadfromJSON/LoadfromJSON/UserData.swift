//
//  UserData.swift
//  LoadfromJSON
//
//  Created by Ajay Gandecha on 12/15/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import Foundation

struct UserData: Codable {
    
    var customer_id: Int
    var customer_name: String
    var customer_type: String
    var age: Int
    var units_sold: Int
}
