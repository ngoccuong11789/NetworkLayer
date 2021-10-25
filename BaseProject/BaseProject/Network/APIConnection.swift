//
//  MGConnection.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class APIConnection {
	
	static func isConnectedToInternet() -> Bool {
		return NetworkReachabilityManager()!.isReachable

	}
	
	static func request<T: Mappable>(_ apiRouter: APIRouter,_ returnType: T.Type, completion: @escaping (_ result: [BaseResponse]?, _ error: BaseResponseError?) -> Void) {
		if !isConnectedToInternet() {
			// Xử lý khi lỗi kết nối internet
			completion(nil, BaseResponseError.init(.FORCE, -1, "Internet interupt!"))
			return
		}
        
		AF.request(apiRouter).responseJSON  { response in
			debugPrint("REQUEST URL:  \(String(describing: response.request?.url))")
			debugPrint("REQUEST HTTPMethod:  \(String(describing: response.request?.httpMethod))")
			debugPrint("REQUEST BODY: \(String(describing: response.request?.httpBody))")
			switch response.result {
			case .success(let value):
				
				if response.response?.statusCode == 200 {
					let object = Mapper<BaseResponse>().mapArray(JSONObject: value)
					completion(object, nil)
				} else {
					completion(nil, BaseResponseError.init(NetworkErrorType.HTTP_ERROR, response.response?.statusCode ?? -1, "some thing wrong"))
				}
				
			case .failure:
                debugPrint("123123")
////                fatalError("failure and nil")
//				if let error = response.result.error {
//					completion(nil, BaseResponseError.init(NetworkErrorType.HTTP_ERROR, response.response?.statusCode ?? -1, "some thing wrong"))
//				} else {
//					fatalError("failure and nil")
//				}
			}
		}
	}
}
