//
//  ViewController.swift
//  Moya Demo
//
//  Created by Andrew on 8/10/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import UIKit
import Moya

class ViewController: UIViewController {
    
    let userProvider = MoyaProvider<DataService>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userProvider.request(.createUser) { (result) in
            switch result {
            case .success(let response):
                print(response.data)
                let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
                print(json)
            case .failure(let error):
                print(error)
            }
        }
    }
}

