//
//  File.swift
//  
//
//  Created by BJ Beecher on 5/27/21.
//

import Foundation

public protocol PathFinder {
    func path(forResource: String?, ofType: String?) -> String?
}

// default conformance

extension Bundle : PathFinder {}
