//
//  ViewController.swift
//  Beerder
//
//  Created by Developer on 19/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
/*
test allan 2 */
/*
 
 struct Beer{
var bar: [Bar]
var brand: Brand
var type: String
var power : String
var note: Int8
var name: String
var barCode: String // Pas sur du string
var commentaire: String
}
/*   func AddBar(barMore :Bar,beerthis: Beer)
 {
 // beerthis.bar.append(batMore :Bar)
 
 }*/



struct Bar{
    var place: String
    var schedule: String
    var note : Int8
    var nom : String
    var price : Int8
}

struct Brand{
    var name : String
    var place : String
    var note : Int8
    var history: String
}

  var bar1 = Bar(place: "Chatelet", schedule: "18h00", note: 4 , nom: "le 400", price:4)
 var bar2 = Bar(place: "Bercy", schedule: "19h00", note: 3 , nom: "Le relais", price:7)
 var brand1 = Brand(name:"BrewDog",place:"Scotland",note:4, history: " Create in 2001")
 var beer1 = Beer(bar: [bar1,bar2] ,brand: brand1, type :"IPA", power:"7°c", note:3, name:"Brew IPA", barCode:"13543434",commentaire:"Good")
 
 
*/


