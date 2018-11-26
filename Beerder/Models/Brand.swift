//
//  Brand.swift
//  Beerder
//
//  Created by Developer on 19/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation
import CoreData

struct Brand{
    var name : String
    var place : String
    var note : Int16
    var history: String

    init(name: String, place: String, history: String){
        self.name = name
        self.place = place
        self.history = history
        self.note = 0
    }
}
