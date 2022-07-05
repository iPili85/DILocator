//
//  DILocator.swift
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

@propertyWrapper
public struct DILocator<D> {
    private let keyPath: WritableKeyPath<DILocatorStoreRecords, D>

    public var wrappedValue: D {
        get { DILocatorStoreRecords[keyPath] }
        set { DILocatorStoreRecords[keyPath] = newValue }
    }
    
    public init(_ keyPath: WritableKeyPath<DILocatorStoreRecords, D>) {
        self.keyPath = keyPath
    }
}
