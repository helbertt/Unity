//
//  GameObject.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Base class for all entities. */
public class GameObject: Object {
    
    // MARK: - Public Variable(s).
    
    /** The Transform attached to this GameObject. */
    public let transform: Transform = Transform()
    
    // MARK: - Constructor(s).
    
    /** Creates a new game object. */
    public override init() {
        super.init()
    }
    
    /** Creates a new game object, named name. */
    public init(name: String) {
        super.init()
        self.name = name
    }
    
}
