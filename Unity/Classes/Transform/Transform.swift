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
    
    /** The position of the transform in world space. */
    let position: Vector3
    
    /** The scale of the transform relative to the parent. */
    let scale: Vector3
    
    /** The rotation of the transform in world space stored as a Quaternion. */
    let rotation: Vector3
    
    /**  */
    public init() {
        self.position = Vector3.zero
        self.scale = Vector3.zero
        self.rotation = Vector3.zero
    }
}
