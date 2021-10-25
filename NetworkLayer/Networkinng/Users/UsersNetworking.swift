//
//  UsersNetworking.swift
//  NetworkLayer
//
//  Created by Cuong Ngoc Nguyen on 10/25/20.
//  Copyright © 2020 Cuong Ngoc Nguyen. All rights reserved.
//

import Foundation
import Alamofire

enum UsersNetworking {
    case getUsers
    case createUser(name: String, job: String)
    case getPosts
}

extension UsersNetworking: TargetType {
    var baseURL: String {
        switch self {
        case .getUsers:
            //return "http://dummy.restapiexample.com/api/v1"
            return "https://reqres.in/api"
        case .getPosts:
            return "https://jsonplaceholder.typicode.com"
        default:
            return "https://reqres.in/api"
        }
    }
    
    var path: String {
        switch self {
        case .getUsers:
            return "/employees"
        case .createUser:
            return "/users"
        case .getPosts:
            return "/posts"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        case .createUser:
            return .post
        case .getPosts:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getUsers:
            return .requestPlain
        case .createUser(let name, let job):
            return .requestParameters(parameters: ["name": name, "job": job], encoding: JSONEncoding.default)
        case .getPosts:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
}
