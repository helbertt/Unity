//
//  GameObject.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Base class for all entities. */
public class GameObject: Component {
    
    // MARK: - Public Variable(s).
    
    /** The local active state of this GameObject. (Read Only) */
    public private(set) var activeSelf: Bool = true
    
    /** Editor only API that specifies if a game object is static. */
    public var isStatic: Bool = false
    
    // MARK: - Private Variable(s).
    
    /** The components attached to this GameObject. */
    fileprivate var components: [Component] = [Component]()
    
    /** The gameObjets in scene. */
    fileprivate static var gameObjects: [GameObject] = [GameObject]()
    
    // MARK: - Inherited Member(s).
    
    /**  */
    public var tag: String = ""
    
    /**  */
    public var gameObject: GameObject = GameObject()
    
    /**  */
    public var name: String = ""
    
    /**  */
    public var hideFlags: HideFlags = .none
    
    
    // MARK: - Constructor(s).
    
    /** Creates a new game object, named name. */
    public init(name: String) {
        self.name = name
    }
    
    public required init() { }
    
    // MARK: Public Function(s)
    
    /** Adds a component class named className to the game object. */
    public func addComponent<T>(component: T.Type) -> T where T:Component {
        let c = component.init()
        self.components.append(c)
        
        return c
    }
        
    /** Is this game object tagged with tag ? */
    public func compare(tag: String) -> Bool {
        return self.tag == tag
    }
    
    /** Returns the component of Type type if the game object has one attached, null if it doesn't. */
    public func getComponent<T>(component: T.Type) -> T? where T:Component {
        for i in self.components {
            if i is T {
                return component as? T
            }
        }
        
        return nil
    }
    
    /** Returns all components of Type type in the GameObject. */
    public func getComponents(type: String) -> [Component] {
        var result = [Component]()
        for component in self.components {
            if type == String(describing: type(of: component.self)) {
                result.append(component)
            }
        }
        return result
    }
    
    /** Activates/Deactivates the GameObject. */
    public func set(active: Bool) {
        self.activeSelf = active
    }
    
    // MARK: Static Function(s),
    
    /** Finds a GameObject by name and returns it. */
    public static func find(name: String) -> GameObject? {
        for go in gameObjects {
            if go.name == name && go.activeSelf == true {
                return go
            }
        }
        return nil
    }
    
    /** Returns a list of active GameObjects tagged tag. Returns empty array if no GameObject was found. */
    public static func findGameObjectsWith(tag: String) -> [GameObject] {
        var result = [GameObject]()
        for go in gameObjects {
            if go.tag == tag && go.activeSelf == true {
                result.append(go)
            }
        }
        return result
    }

    /** Returns one active GameObject tagged tag. Returns null if no GameObject was found. */
    public static func findWith(tag: String) -> GameObject? {
        for go in gameObjects {
            if go.tag == tag && go.activeSelf == true {
                return go
            }
        }
        return nil
    }
    
}
