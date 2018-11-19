//
//  Beer.swift
//  Beerder
//
//  Created by Developer on 19/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation


 
 struct Beer{
 var bar: [Bar]
 var brand: Brand
 var type: String
 var power : String
 var note: Int8
 var name: String
 var barCode: String // Pas sur du string
 var commentaire: String?
 var photo: String

    init(name: String, brand: Brand, type: String, power: String, barCode: String, bar : [Bar] = [] , photo: String){
        self.name = name
        self.brand = brand
        self.type = type
        self.power = power
        self.barCode = barCode
        self.bar = bar
        self.photo = photo
        self.note = 0
    }
} 




 

