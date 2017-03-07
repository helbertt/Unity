//
//  Object.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Base class for all objects Unity can reference. */
public class Object {
    
    // MARK: - Variable(s).
    
    /** Should the object be hidden, saved with the scene or modifiable by the user? */
    var hideFlags: Bool
    
    /** The name of the object. */
    var name: String
    
    // MARK: Constructor(s).
    
    public init() {
        self.hideFlags = false
        self.name = ""
    }
    
    // MARK: - Public Function(s).
    
    /** Returns the instance id of the object. */
    public func getInstanceID() -> Int {
        return 0
    }
    
    /** Returns the instance id of the object. */
    public func toString() -> String {
        return String("Object(\"\(self.name)\")")
    }
    
    // MARK: - Static Function(s).
    
    
    // MARK: - Operator(s).
    
    /** Compares if two objects refer to a different object. */
    public static func != (lhs: Object, rhs: Object) -> Bool {
        return lhs.hideFlags != rhs.hideFlags || lhs.name != rhs.name
    }
    
    /** Compares two object references to see if they refer to the same object. */
    public static func == (lhs: Object, rhs: Object) -> Bool {
        return lhs.hideFlags == rhs.hideFlags && lhs.name == rhs.name
    }
}
