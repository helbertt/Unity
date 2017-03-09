//
//  Behaviour.swift
//  Unity
//
//  Created by Helbert Gomes on 08/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

public class Behaviour: Component {
    
    // MARK: - Variable(s).
    
    /** Enabled Behaviours are Updated, disabled Behaviours are not. */
    public var enabled: Bool = true
    
    /** Has the Behaviour had enabled called. */
    public var isActiveAndEnabled: Bool = true
    
    // MARK: Inherited Member(s).
    
    /**  */
    public var name: String = ""
    
    /**  */
    public var tag: String = ""
    
    /**  */
    public var hideFlags: HideFlags = .none
    
    /**  */
    public var gameObject: GameObject = GameObject()
    
    // MARK: - Constructor(s).
    
    public required init() { }
    
    // MARK: - Operator(s).
    
    /** Compares if two objects refer to a different object. */
    public static func != (lhs: Behaviour, rhs: Behaviour) -> Bool {
        return lhs.enabled != rhs.enabled || lhs.isActiveAndEnabled != rhs.isActiveAndEnabled
    }
    
    /** Compares two object references to see if they refer to the same object. */
    public static func == (lhs: Behaviour, rhs: Behaviour) -> Bool {
        return lhs.enabled == rhs.enabled && lhs.isActiveAndEnabled == rhs.isActiveAndEnabled
    }
}
