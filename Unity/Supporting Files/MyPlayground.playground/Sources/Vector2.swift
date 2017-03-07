//
//  Vector2.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Representation of 2D vectors and points. */
public struct Vector2 {
    
    // MARK: - Variable(s).
    
    /** X component of the vector. */
    public private(set) var x: Float
    
    /** Y component of the vector. */
    public private(set) var y: Float
    
    /** Returns the length of this vector. */
    public var magnitude: Float {
        return sqrt((x * x) + (y * y))
    }
    
    // MARK: - Static Variable(s).
    
    /** Shorthand for writing Vector2(0, -1). */
    public static var down: Vector2 {
        return Vector2(x: 0, y: -1)
    }
    
    /** Shorthand for writing Vector2(-1, 0). */
    public static var left: Vector2 {
        return Vector2(x: -1, y: 0)
    }
    
    /** Shorthand for writing Vector2(1, 1). */
    public static var one: Vector2 {
        return Vector2(x: 1, y: 1)
    }
    
    /** Shorthand for writing Vector2(1, 0). */
    public static var right: Vector2 {
        return Vector2(x: 1, y: 0)
    }
    
    /** Shorthand for writing Vector2(0, 1). */
    public static var up: Vector2 {
        return Vector2(x: 0, y: 1)
    }
    
    /** Shorthand for writing Vector2(0, 0). */
    public static var zero: Vector2 {
        return Vector2(x: 0, y: 0)
    }
    
    // MARK: - Constructor(s).
    
    public init() {
        self.x = 0
        self.y = 0
    }
    
    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
    /** Set x and y components of an existing Vector2. */
    public init(with v: Vector2) {
        self.x = v.x
        self.y = v.y
    }
    
    /** Set x and y components of an existing Vector3 (z is discarded). */
    public init(with v: Vector3) {
        self.x = v.x
        self.y = v.y
    }
    
    // MARK: - Function(s).
    
    /** Makes this vector have a magnitude of 1. */
    func normalize() -> Float {
        return (self.x / self.magnitude) + (self.y / self.magnitude)
    }
    
    /** Set x and y components of an existing Vector2. */
    public mutating func set(with v: Vector2) -> Void {
        self.x = v.x
        self.y = v.y
    }
    
    /** Returns a nicely formatted string for this vector. */
    public func toString() -> String {
        return "Vetor2(\(self.x), \(self.y))"
    }
    
    // MARK: - Static Function(s).
    
    /** Returns the angle in degrees between from and to. */
    public static func angle(from: Vector2, to: Vector2) -> Float {
        let a = from.magnitude * to.magnitude
        let b = (from.x * to.x) + (from.y * to.y)
        
        return b/a
    }
    
    /** Returns a copy of vector with its magnitude clamped to maxLength. */
    public static func clampMagnitude(vector: Vector2, maxLenght: Float) -> Vector2 {
        return Vector2(x: 0, y: 0)
    }
    
    /** Returns the distance between a and b. */
    public static func distance(from: Vector2, to: Vector2) -> Float {
        return (from - to).magnitude
    }
    
    /** Dot Product of two vectors. */
    public static func dot(lhs: Vector2, rhs: Vector2) -> Float {
        return (lhs.x * rhs.x) + (lhs.y * rhs.y)
    }
    
    /** Returns a vector that is made from the largest components of two vectors. */
    public static func max(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(x: lhs.x > rhs.x ? lhs.x : rhs.x,
                       y: lhs.y > rhs.y ? lhs.y : rhs.y)
    }
    
    /** Returns a vector that is made from the smallest components of two vectors. */
    public static func min(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(x: lhs.x < rhs.x ? lhs.x : rhs.x,
                       y: lhs.y < rhs.y ? lhs.y : rhs.y)
    }
    
    /** Multiplies two vectors component-wise. */
    public static func scale (a: Vector2, b: Vector2) -> Vector2 {
        return Vector2(x: a.x * b.x, y: a.y * b.y)
    }
    
    // MARK: - Operator(s).
    
    /** Subtracts one vector from another. */
    public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    /** Adds two vectors. */
    public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    /** Multiplies a vector by a number. */
    public static func * (lhs: Vector2, rhs: Float) -> Vector2 {
        return Vector2(x: lhs.x * rhs, y: lhs.y * rhs)
    }
    
    /** Divides a vector by a number. */
    public static func / (lhs: Vector2, rhs: Float) -> Vector2 {
        return Vector2(x: lhs.x / rhs, y: lhs.y / rhs)
    }
    
    /** Returns true if vectors different. */
    public static func != (lhs: Vector2, rhs: Vector2) -> Bool {
        return lhs.x != rhs.x || lhs.y != rhs.y
    }
    
    /** Returns true if the vectors are equal. */
    public static func == (lhs: Vector2, rhs: Vector2) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}
