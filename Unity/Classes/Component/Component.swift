//
//  Component.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

public class Component: Object {
    
    // MARK: - Variable(s).
    
    /** The game object this component is attached to. A component is always attached to a game object. */
    public var gameObject: GameObject
    
    /** The tag of this game object. */
    public var tag: String
    
    /** The Transform attached to this GameObject. */
    public var transform: Transform {
        return self.gameObject.transform
    }
    
    // MARK: - Constructor(s).
    
    public override init() {
        self.gameObject = GameObject()
        self.tag = ""
        
        super.init()
    }
    
    public init(_ gameObject: GameObject) {
        self.gameObject = gameObject
        self.tag = ""
        super.init()
    }
    
    // MARK: - Public Function(s).
    
    func compare(tag: String) -> Bool {
        return self.tag == tag
    }
    
    func getComponent<T>() -> T where T: Component {
        return Component() as! T
    }
}
