//
//  Animal.swift
//  ch42297_assignment5
//
//  Created by Christina Hoang on 10/6/19.
//  Copyright © 2019 Christina Hoang. All rights reserved.
//

import Foundation

class Animal {
    var name: String
    var scientificName: String
    var scientificClass: String
    var size: Int
    var image: String
    
    init (name: String, scientificName: String, scientificClass: String, size: Int, image: String) {
        self.name = name
        self.scientificName = scientificName
        self.scientificClass = scientificClass
        self.size = size
        self.image = image
    }
    
}
