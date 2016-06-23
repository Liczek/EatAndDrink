//
//  Drink.swift
//  EatAndDrinkToday
//
//  Created by Pawel on 23.06.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class Drink: NSObject {
    
    var name: String!
    var image: String!
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
        super.init()
        
    }
    
    
}
