//
//  UserModel.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import ObjectMapper


class EmployeeModel: Mappable {
	var id: String?
	var name: String?
	var salary: String?
	var age: String?
	var imageURL: String?
	
	required init?(map: Map) {}
	
	func mapping(map: Map) {
		id 			<- map["id"]
		name 		<- map["employee_name"]
		salary 		<- map["employee_salary"]
		age 		<- map["employee_age"]
		imageURL 	<- map["profile_image"]
	}
}
