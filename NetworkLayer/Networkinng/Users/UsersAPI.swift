//
//  UsersAPI.swift
//  NetworkLayer
//
//  Created by Cuong Ngoc Nguyen on 10/25/20.
//  Copyright © 2020 Cuong Ngoc Nguyen. All rights reserved.
//

import Foundation

protocol UsersAPIProtocol {
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void)
    func getPosts(completion: @escaping (Result<BaseResponse<[PostsModel]>?, NSError>) -> Void)
}


class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    //MARK:- Requests
    
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void) {
        self.fetchData(target: .getUsers, responseClass: BaseResponse<[UserModel]>.self) { (result) in
            completion(result)
        }
    }
    
    func getPosts(completion: @escaping (Result<BaseResponse<[PostsModel]>?, NSError>) -> Void) {
        self.fetchData(target: .getPosts, responseClass: BaseResponse<[PostsModel]>.self) { (result) in
            completion(result)
        }
    }
    
}
