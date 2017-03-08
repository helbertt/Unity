//
//  Component.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

public class Component: Object {
    
    // MARK: Variable(s).
    
    /** The game object this component is attached to. A component is always attached to a game object. */
    public var gameObject: GameObject = GameObject()
    
    /** The tag of this game object. */
    public var tag: String = ""
    
    /** The Transform attached to this GameObject. */
    public var transform: Transform {
        return self.gameObject.transform
    }
    
    // MARK: Public Function(s).
        
    public func compare(tag: String) -> Bool {
        return self.tag == tag
    }
    
    public func getComponent(type: String) -> Component? {
        return self.gameObject.getComponent(type: type)
    }
    
    public func getComponents(type: String) -> [Component] {
        return self.gameObject.getComponents(type: type)
    }
    
    // MARK: Operator(s),
    
    /** Compares if two objects refer to a different object. */
    public static func != (lhs: Component, rhs: Component) -> Bool {
        return lhs.gameObject != rhs.gameObject ||
            lhs.tag != rhs.tag ||
            lhs.transform != rhs.transform
    }
    
    /** Compares two object references to see if they refer to the same object. */
    public static func == (lhs: Component, rhs: Component) -> Bool {
        return lhs.gameObject == rhs.gameObject &&
            lhs.tag == rhs.tag &&
            lhs.transform == rhs.transform
    }
}
