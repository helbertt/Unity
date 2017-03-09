//
//  Transform.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Position, rotation and scale of an object. */
public struct Transform {
    
    // MARK: Variabl(e).
    
    /** The position of the transform in world space. */
    public var position: Vector3
    
    /** The scale of the transform relative to the parent. */
    public var scale: Vector3
    
    /** The rotation of the transform in world space stored as a Quaternion. */
    public var rotation: Vector3
    
    // MARK: Constructor(s).
    
    /** Constructor */
    public init() {
        self.position = Vector3.zero
        self.scale = Vector3.zero
        self.rotation = Vector3.zero
    }
    
    // MARK: Operator(s).
    
    public static func != (lhs: Transform, rhs: Transform) -> Bool {
        return lhs.position != rhs.position || lhs.rotation != rhs.rotation || lhs.scale != rhs.scale
    }
    
    public static func == (lhs: Transform, rhs: Transform) -> Bool {
        return lhs.position == rhs.position && lhs.rotation == rhs.rotation && lhs.scale == rhs.scale
    }
}
