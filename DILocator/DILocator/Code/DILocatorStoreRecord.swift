//
//  DILocatorStoreRecord.swift
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

public struct DILocatorStoreRecords {
    private static var shared: DILocatorStoreRecords = DILocatorStoreRecords()
    
    static subscript<K: DILocatorStoreKey>(key: K.Type) -> K.Record {
        get { key.currentRecord }
        set { key.currentRecord = newValue }
    }
    
    static subscript<V>(_ keyPath: WritableKeyPath<DILocatorStoreRecords, V>) -> V {
        get { shared[keyPath: keyPath] }
        set { shared[keyPath: keyPath] = newValue }
    }
}
