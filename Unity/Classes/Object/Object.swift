//
//  Object.swift
//  Unity
//
//  Created by Helbert Gomes on 06/03/17.
//  Copyright © 2017 Helbert Gomes. All rights reserved.
//

import Foundation

/** Base for all objects Unity can reference. */
public protocol Object {

    /** Should the object be hidden, saved with the scene or modifiable by the user? */
    var hideFlags: HideFlags { get set }
    
    /** The name of the object. */
    var name: String { get set }
}
