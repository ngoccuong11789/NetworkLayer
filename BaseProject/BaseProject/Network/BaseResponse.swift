//
//  BaseResponse.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import ObjectMapper

//class BaseResponse<T: Mappable>: Mappable {
//	var status: String?
//	var code: Int?
//	var message: String?
//	var data: T?
//	var listData: [T]?
//
//	required init?(map: Map) {
//	}
//
//	func mapping(map: Map) {
//		status <- map["status"]
//		code <- map["code"]
//		message <- map["message"]
//		data <- map["data"]
//		listData <- map["data"]
//	}
//
//	func isSuccessCode() -> Bool? {
//		return code == 200
//	}
//}

class BaseResponse: Mappable {
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?

    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        userId        <- map["userId"]
        id            <- map["id"]
        title         <- map["title"]
        body          <- map["body"]
    }
    
}

class BaseResponseError {
	var mErrorType: NetworkErrorType!
	var mErrorCode: Int!
	var mErrorMessage: String!
	
	init(_ errorType: NetworkErrorType,_ errorCode: Int,_ errorMessage: String) {
		mErrorType = errorType
		mErrorCode = errorCode
		mErrorMessage = errorMessage
	}
}
