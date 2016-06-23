//
//  Food.swift
//  EatAndDrinkToday
//
//  Created by Maciej Durazinski on 22.06.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class Food: NSObject {

    var name: String!
    var image: String!
    
    init(name:String, image:String) {
        self.name = name
        self.image = image
        
        super.init()
    }

}
