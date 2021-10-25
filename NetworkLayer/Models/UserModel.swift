//
//  UserModel.swift
//  NetworkLayer
//
//  Created by Cuong Ngoc Nguyen on 10/25/20.
//  Copyright © 2020 Cuong Ngoc Nguyen. All rights reserved.
//

import Foundation

class UserModel: Codable {
    var name: String?
    var salary: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "employee_name"
        case salary = "employee_salary"
    }
}
