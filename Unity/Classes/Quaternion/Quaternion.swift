//
//  Quaternion.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//


import Foundation

/** Quaternions are used to represent rotations. */
public struct Quaternion {
    
    // MARK: - Variable(s).
    
    /** X component of the Quaternion. */
    public private(set) var x: Float
    
    /** Y component of the Quaternion. */
    public private(set) var y: Float
    
    /** Z component of the Quaternion. */
    public private(set) var z: Float
    
    /** W component of the Quaternion. */
    public private(set) var w: Float
    
    /** The identity rotation. */
    public var identity: Float {
        return 0
    }
    
    /** Returns the length of this vector. */
    private var magnitude: Float {
        return sqrt((x * x) + (y * y) + (z * z) + (w * w))
    }
    
    // MARK: - Static Variable(s).

    
    // MARK: - Constructor(s).
    
    public init() {
        self.x = 0
        self.y = 0
        self.z = 0
        self.w = 0
    }
    
    /** Constructs new Quaternion with given x,y,z,w components. */
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /** Set x, y, z and w components of an existing Vector4. */
    public init(with q: Quaternion) {
        self.x = q.x
        self.y = q.y
        self.z = q.z
        self.w = q.w
    }
    
    // MARK: - Function(s).
    
    /** Set x, y, z and w components of an existing Quaternion. */
    public mutating func set(with q: Quaternion) -> Void {
        self.x = q.x
        self.y = q.y
        self.z = q.z
        self.w = q.w
    }
    
    // MARK: - Static Function(s).
    
    /** Returns the angle in degrees between two rotations a and b. */
    public static func angle(from: Quaternion, to: Quaternion) -> Float {
        let a = from.magnitude * to.magnitude
        let b = (from.x * to.x) + (from.y * to.y) + (from.z * to.z) + (from.w * to.w)
        
        return b/a
    }
    
    
    /** The dot product between two rotations. */
    public static func dot(lhs: Vector4, rhs: Vector4) -> Float {
        return (lhs.x * rhs.x) + (lhs.y * rhs.y) + (lhs.z * rhs.z) + (lhs.w * rhs.w)
    }
    
    // MARK: - Operator(s).

    /** Combines rotations lhs and rhs. */
    public static func * (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        return Quaternion()
    }
    
    /** Combines rotations lhs and rhs. */
    public static func * (lhs: Quaternion, rhs: Vector3) -> Quaternion {
        return Quaternion()
    }
    
    /** Are two quaternions different from each other? */
    public static func != (lhs: Quaternion, rhs: Quaternion) -> Bool {
        return lhs.x != rhs.x || lhs.y != rhs.y || lhs.z != rhs.z || lhs.w != rhs.w
    }
    
    /** Are two quaternions equal to each other? */
    public static func == (lhs: Quaternion, rhs: Quaternion) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z && lhs.w == rhs.w
    }
}
