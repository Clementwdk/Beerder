//
//  Beer.swift
//  Beerder
//
//  Created by Developer on 19/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//
/*
import Foundation
import CoreData

enum type: String {
    case Blond
    case IPA
    case APA
    case Stout
    case Lager
    case Amber
    case Brown
    case Pilsner
    case Triple
}
 
 struct Beer{
  var bar: [Bar]!
 var brand: Brand
 let type: String
 var power : String
 var note: Int8
 var name: String
 var barCode: String
 var commentaire: String?
 var photo: String

    init(name: String, brand: Brand, type: String, power: String, barCode: String,  photo: String ){
        self.name = name
        self.brand = brand
        self.type = type
        self.power = power
        self.barCode = barCode
        self.photo = photo
        self.note = 0
        
    }
    
    var allBar: [Bar]{
        return bar
    }
    
    mutating func addBar(_ baar: Bar)
    {
        bar.append(baar)
    }
}















 

