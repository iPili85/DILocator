//
//  HTTPProvider.swift
//  DILocator
//
//  
//
//  This software is the confidential and proprietary information of
//  BBVA ("Confidential Information"). You shall not disclose such
//  Confidential Information and shall use it only in accordance with
//  the terms of the license agreement you entered into with BBVA.
//

import Foundation

protocol HTTPProvider {
    func request()
}

extension HTTPProvider {
    func request() {
        print("HttpProvider making a request")
    }
}

struct HTTPProviderKey: DILocatorStoreKey {
    static var currentRecord: HTTPProvider = URLSession.shared
}

extension URLSession: HTTPProvider {  }
