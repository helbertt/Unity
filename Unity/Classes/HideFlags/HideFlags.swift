//
//  HideFlags.swift
//  Unity
//
//  Created by Helbert Gomes on 07/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

public enum HideFlags: Int {

    // MARK: Value(s).
    
    case none = 0
    case hideInHierarchy = 1
    case hideInInspector = 2
    case dontSaveInEditor = 4
    case notEditable = 8
    case dontSaveInBuild = 16
    case dontUnloadUnusedAsset = 32
    case dontSave = 52
    case hideAndDontSave = 61
    
    
    // MARK: - Operator(s).
    
    public static func == (lhs: HideFlags, rhs: HideFlags) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    public static func != (lhs: HideFlags, rhs: HideFlags) -> Bool {
        return lhs.rawValue != rhs.rawValue
    }
}
