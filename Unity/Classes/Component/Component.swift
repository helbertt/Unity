//
//  Component.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

public protocol Component: Object {
    
    // MARK: Variable(s).
    
    /** The game object this component is attached to. A component is always attached to a game object. */
    var gameObject: GameObject { get set }
    
    /** The tag of this game object. */
    var tag: String { get set }
    
    // MARK: - Constructor(s).
    
    init()
}
