//
//  DILocatorStoreKey.swift
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

public protocol DILocatorStoreKey {
    associatedtype Record
    static var currentRecord: Record { get set }
}
