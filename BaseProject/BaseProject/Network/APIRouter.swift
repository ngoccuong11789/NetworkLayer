//
//  File.swift
//  vCAS
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
	// =========== Begin define api ===========
//	case login(UserName: String, Password: String, IOSVersion: String)
//	case changePassword(pass: String, newPass: String, confirmNewPass: String)
//	case gourmetSearch([String: Any])
	case dummyEmployee
	// =========== End define api ===========
	
	// MARK: - HTTPMethod
	private var method: HTTPMethod {
		switch self {
		case .dummyEmployee:
			return .get
		}
	}
	
	// MARK: - Path
	private var path: String {
		switch self {
		case .dummyEmployee:
			//return "api/v1/employees"
            return "posts"
		}
	}
	
	// MARK: - Headers
//	private var headers: HTTPHeaders {
//		var headers = ["Accept": "application/json"]
////		switch self {
////
////		case .changePassword:
////			headers["Authorization"] = getAuthorizationHeader()
////			break
////
////		default: break
//
//		//return headers
//        return Alamofire.HTTPHeaders(headers)
//	}
    
//    var headers: [String : String]? {
//        switch self {
//        default:
//            return [:]
//        }
//    }
    
	
	// MARK: - Parameters
	private var parameters: Parameters? {
		switch self {
		case .dummyEmployee:
			return nil
		}
	}
	
	// MARK: - URL request
	func asURLRequest() throws -> URLRequest {
		let url = try Production.BASE_URL.asURL()
		
		// setting path
		var urlRequest: URLRequest = URLRequest(url: url.appendingPathComponent(path))
		
		// setting method
		urlRequest.httpMethod = method.rawValue
		
		// setting header
//		for (key, value) in headers {
//			urlRequest.addValue(value, forHTTPHeaderField: key)
//		}
        

        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
		
		if let parameters = parameters {
			do {
				urlRequest = try URLEncoding.default.encode(urlRequest, with: parameters)
			} catch {
				print("Encoding fail")
			}
		}
		
		return urlRequest
	}
	
	private func getAuthorizationHeader() -> String? {
		return "Authorization token"
	}
}
