//
//  MonoBehaviour.swift
//  Unity
//
//  Created by Helbert Gomes on 08/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** MonoBehaviour is the base class from which every Unity script derives. */
public class MonoBehaviour: Behaviour {
    
    // MARK: Variable(s).
    
    /** Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor). */
    public var runInEditMode: Bool = false
    
    /** Disabling this lets you skip the GUI layout phase. */
    public var useGUILayout: Bool = false
    
    // MARK: Public Function(s).
    
    /** Invokes the method methodName in time seconds. */
    public func invoke(method: Selector) {
        Timer.scheduledTimer(timeInterval: TimeInterval(0),
                            target: self,
                            selector: method,
                            userInfo: nil,
                            repeats: false)
    }
    
    /** Invokes the method methodName in time seconds. */
    public func invoke(method: Selector, time: Float) {
        Timer.scheduledTimer(timeInterval: TimeInterval(time),
                             target: self,
                             selector: method,
                             userInfo: nil,
                             repeats: false)
    }
    
    /** Invokes the method methodName in time seconds, then repeatedly every repeatRate seconds. */
    public func invokeRepeating(method: Selector, time: Float) {
        Timer.scheduledTimer(timeInterval: TimeInterval(time),
                             target: self,
                             selector: method,
                             userInfo: nil,
                             repeats: true)
    }
    
    /** Awake is called when the script instance is being loaded. */
    open func awake() { }
    
    /** Start is called on the frame when a script is enabled just before any of the Update methods is called the first time. */
    open func start() { }
    
    /** Update is called every frame, if the MonoBehaviour is enabled. */
    open func update() { }
}
