//
//  PostsModel.swift
//  BaseProject
//
//  Created by Nguyen Ngoc Cuong on 22/10/2021.
//  Copyright © 2021 Vuong Toan Chung. All rights reserved.
//

//https://jsonplaceholder.typicode.com/posts

import Foundation
import ObjectMapper


class PostsModel: Mappable {
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        userId        <- map["userId"]
        id            <- map["id"]
        title         <- map["title"]
        body          <- map["body"]
        
    }
}
