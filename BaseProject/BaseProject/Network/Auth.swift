//
//  Auth.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import ObjectMapper

class Auth: Mappable {
	var tokenType: String?
	var expiresIn: Int?
	var accessToken: String?
	var refreshToken: String?
	
	required init?(map: Map) {
	}
	
	func mapping(map: Map) {
		tokenType <- map["token_type"]
		expiresIn <- map["expires_in"]
		accessToken <- map["access_token"]
		refreshToken <- map["refresh_token"]
	}
}
