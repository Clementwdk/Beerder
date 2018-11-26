//
//  Commerce.swift
//  Beerder
//
//  Created by Developer on 19/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation
import CoreData

struct Bar{
    var place: String
    var schedule: String
    var note : Int8
    var name : String
    var price : double_t
    
    init(name: String, place: String, schedule : String, price : double_t, note : Int8){
        self.name = name
        self.place = place
        self.price = price
        self.note = 0
        self.schedule = schedule
    }
    
}
