//
//  Service.swift
//  learn_mvc_01
//
//  Created by IndratS on 11/11/20.
//  Copyright © 2020 IndratSaputra. All rights reserved.
//

import Foundation

struct Service {
    static func fetchMVCData(_ completion: @escaping (Result<[MVCModel], Error>) -> ()) {
        completion(.success(mvcData))
    }
}

let mvcData = [
    MVCModel(firstname: "joe", lastName: "kris", skillLevel: 18, age: 20)
    ,MVCModel(firstname: "indrat", lastName: "saputra", skillLevel: 23, age: 30)
]
