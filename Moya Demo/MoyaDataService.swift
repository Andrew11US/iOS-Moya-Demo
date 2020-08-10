//
//  MoyaDataService.swift
//  Moya Demo
//
//  Created by Andrew on 8/10/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import Foundation
import Moya

enum DataService {
    case createUser
    case deleteUser
}

extension DataService: TargetType {
    var baseURL: URL {
        return URL(string: "https://jsonplaceholder.typicode.com")!
    }
    
    var path: String {
        switch self {
        case .createUser, .deleteUser:
            return "/users"
        }
    }
    
        var method: Moya.Method {
        switch self {
        case .createUser, .deleteUser:
            return .post
            }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .createUser, .deleteUser:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
}
