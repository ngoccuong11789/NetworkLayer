//
//  BaseResponse.swift
//  NetworkLayer
//
//  Created by Cuong Ngoc Nguyen on 10/25/20.
//  Copyright © 2020 Cuong Ngoc Nguyen. All rights reserved.
//

import Foundation


class BaseResponse<T: Codable>: Codable {
    var status: String?
    var data: T?

    enum CodingKeys: String, CodingKey {
        case status = "status"
        case data = "data"
    }
}

//class BaseResponse<T: Codable>: Codable {
//    var userId: Int?
//    var id: Int?
//    var title: String?
//    var body: String?
//
//    enum CodingKeys: String, CodingKey {
//        case userId = "userId"
//        case id = "id"
//        case title = "title"
//        case body = "body"
//    }
//}


//class PostsModel: Codable {
//    var userId: Int?
//    var id: Int?
//    var title: String?
//    var body: String?
//
//    enum CodingKeys: String, CodingKey {
//        case userId = "userId"
//        case id = "id"
//        case title = "title"
//        case body = "body"
//    }
//}
