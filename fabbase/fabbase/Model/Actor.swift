//
//  Actor.swift
//  fab-base
//
//  Created by Wilman Garcia De Leon on 9/6/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import Foundation

struct Actor {
    private(set) public var name: String
    private(set) public var imageName: String
    private(set) public var details: String
    
    init(name: String, imageName: String, details: String) {
        self.name = name
        self.imageName = imageName
        self.details = details
    }
}
