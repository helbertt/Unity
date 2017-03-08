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
    
    case None = 0
    case HideInHierarchy = 1
    case HideInInspector = 2
    case DontSaveInEditor = 4
    case NotEditable = 8
    case DontSaveInBuild = 16
    case DontUnloadUnusedAsset = 32
    case DontSave = 52
    case HideAndDontSave = 61
    
    
    // MARK: - Operator(s).
    
    public static func == (lhs: HideFlags, rhs: HideFlags) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    public static func != (lhs: HideFlags, rhs: HideFlags) -> Bool {
        return lhs.rawValue != rhs.rawValue
    }
}
