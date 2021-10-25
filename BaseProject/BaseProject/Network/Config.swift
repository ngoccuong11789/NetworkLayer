//
//  Config.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import Alamofire

struct Production {
	//static let BASE_URL: String = "http://dummy.restapiexample.com/" // Thay thế bằng Base url mà bạn sử dụng ở đây
    static let BASE_URL: String = "https://jsonplaceholder.typicode.com/" // Thay thế bằng Base url mà bạn sử dụng ở đây
}

enum NetworkErrorType {
	case API_ERROR
	case HTTP_ERROR
	case FORCE
}

enum Result {
	case success(Any)
	case failure(Error)
}
