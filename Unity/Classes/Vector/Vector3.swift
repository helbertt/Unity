//
//  Vector3.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Representation of 3D vectors and points. */
public struct Vector3 {
    
    // MARK: - Variable(s).
    
    /** X component of the vector. */
    public private(set) var x: Float
    
    /** Y component of the vector. */
    public private(set) var y: Float
    
    /** Z component of the vector. */
    public private(set) var z: Float
    
    /** Returns the length of this vector. */
    public var magnitude: Float {
        return sqrt((x * x) + (y * y) + (z * z))
    }
    
    // MARK: - Static Variable(s).
    
    /** Shorthand for writing Vector3(0, 0, -1). */
    public static var back: Vector3 {
        return Vector3(x: 0, y: 0, z: -1)
    }
    
    /** Shorthand for writing Vector3(0, -1, 0). */
    public static var down: Vector3 {
        return Vector3(x: 0, y: -1, z: 0)
    }
    
    /** Shorthand for writing Vector3(0, 0, 1). */
    public static var forward: Vector3 {
        return Vector3(x: 0, y: 0, z: 1)
    }
    
    /** Shorthand for writing Vector3(-1, 0, 0). */
    public static var left: Vector3 {
        return Vector3(x: -1, y: 0, z: 0)
    }
    
    /** Shorthand for writing Vector3(1, 1, 1). */
    public static var one: Vector3 {
        return Vector3(x: 1, y: 1, z: 1)
    }
    
    /** Shorthand for writing Vector3(1, 0, 0). */
    public static var right: Vector3 {
        return Vector3(x: 1, y: 0, z: 0)
    }
    
    /** Shorthand for writing Vector3(0, 1, 0). */
    public static var up: Vector3 {
        return Vector3(x: 0, y: 1, z: 0)
    }
    
    /** Shorthand for writing Vector3(0, 0, 0). */
    public static var zero: Vector3 {
        return Vector3(x: 0, y: 0, z: 0)
    }
    
    // MARK: - Constructor(s).
    
    public init() {
        self.x = 0
        self.y = 0
        self.z = 0
    }
    
    public init(x: Float, y: Float, z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    /** Set x and y components of an existing Vector2. */
    public init(with v: Vector2) {
        self.x = v.x
        self.y = v.y
        self.z = 0
    }
    
    /** Set x, y and z components of an existing Vector3. */
    public init(with v: Vector3) {
        self.x = v.x
        self.y = v.y
        self.z = v.z
    }
    
    // MARK: - Function(s).
    
    /** Makes this vector have a magnitude of 1. */
    public func normalize() -> Float {
        return (self.x / self.magnitude) + (self.y / self.magnitude) + (self.z / self.magnitude)
    }
    
    /** Set x, y and z components of an existing Vector3. */
    public mutating func set(with v: Vector3) -> Void {
        self.x = v.x
        self.y = v.y
        self.z = v.z
    }
    
    /** Returns a nicely formatted string for this vector. */
    public func toString() -> String {
        return "Vector3(\(self.x), \(self.y), \(self.z))"
    }
    
    // MARK: - Static Function(s).
    
    /** Returns the angle in degrees between from and to. */
    public static func angle(from: Vector3, to: Vector3) -> Float {
        let a = from.magnitude * to.magnitude
        let b = (from.x * to.x) + (from.y * to.y) + (from.z * to.z)
        
        return b/a
    }
    
    /** Returns the distance between a and b. */
    public static func distance(from: Vector3, to: Vector3) -> Float {
        return (from - to).magnitude
    }
    
    /** Dot Product of two vectors. */
    public static func dot(lhs: Vector3, rhs: Vector3) -> Float {
        return (lhs.x * rhs.x) + (lhs.y * rhs.y) + (lhs.z * rhs.z)
    }
    
    /** Returns a vector that is made from the largest components of two vectors. */
    public static func max(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(x: lhs.x > rhs.x ? lhs.x : rhs.x,
                       y: lhs.y > rhs.y ? lhs.y : rhs.y,
                       z: lhs.z > rhs.z ? lhs.z : rhs.z)
    }
    
    /** Returns a vector that is made from the smallest components of two vectors. */
    public static func min(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(x: lhs.x < rhs.x ? lhs.x : rhs.x,
                       y: lhs.y < rhs.y ? lhs.y : rhs.y,
                       z: lhs.z < rhs.z ? lhs.z : rhs.z)
    }
    
    /** Multiplies two vectors component-wise. */
    public static func scale (a: Vector3, b: Vector3) -> Vector3 {
        return Vector3(x: a.x * b.x, y: a.y * b.y, z: a.z * b.z)
    }
    
    // MARK: - Operator(s).
    
    /** Subtracts one vector from another. */
    public static func - (lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
    }
    
    /** Adds two vectors. */
    public static func + (lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
    }
    
    /** Multiplies a vector by a number. */
    public static func * (lhs: Vector3, rhs: Float) -> Vector3 {
        return Vector3(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs)
    }
    
    /** Divides a vector by a number. */
    public static func / (lhs: Vector3, rhs: Float) -> Vector3 {
        return Vector3(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs)
    }
    
    /** Returns true if vectors different. */
    public static func != (lhs: Vector3, rhs: Vector3) -> Bool {
        return lhs.x != rhs.x || lhs.y != rhs.y || lhs.z != rhs.z
    }
    
    /** Returns true if the vectors are equal. */
    public static func == (lhs: Vector3, rhs: Vector3) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
}
