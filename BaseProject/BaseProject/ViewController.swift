//
//  ViewController.swift
//  BaseProject
//
//  Created by Vuong Toan Chung on 2/18/20.
//  Copyright © 2020 Vuong Toan Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
//		APIConnection.shared.
		// Do any additional setup after loading the view, typically from a nib.
//		APIConnection.request(.dummyEmployee, EmployeeModel.self) { model, error in
//			guard let model = model else {
//				print("error")
//				return
//			}
//            print("message :  \(model.message) and status : \(model.status)")
//		}
        
        APIConnection.request(.dummyEmployee, PostsModel.self) { model, error in
            guard let model = model else {
                print("error")
                return
            }
            print("message :  \(model[0].body) ")
        }
        
        
	}


}

