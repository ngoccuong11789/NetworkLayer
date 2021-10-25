//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Cuong Ngoc Nguyen on 10/25/20.
//  Copyright © 2020 Cuong Ngoc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let api: UsersAPIProtocol = UsersAPI()
        api.getUsers { (result) in
            switch result {
            case .success(let response):
                let users = response?.data
                for user in users ?? [] {
                    print("\(user.name ?? "") => \(user.salary ?? "")")
                }
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        }
        
//        api.getPosts { (result) in
//            switch result {
//            case .success(let response):
////                let posts = response?.body
////                for user in users ?? [] {
////                    print("\(user.name ?? "") => \(user.salary ?? "")")
////                }
//            print("response : \(response)")
//            case .failure(let error):
//                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
//            }
//        }
        
        
        
    }


}

