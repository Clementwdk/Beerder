//
//  NewBrandViewController.swift
//  Beerder
//
//  Created by Developer on 26/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit
import CoreData

class NewBrandViewController: UIViewController {

    @IBOutlet weak var NoteBrand: UITextField!
    @IBOutlet weak var StoryBrand: UITextField!
    @IBOutlet weak var placeBrand: UITextField!
    @IBOutlet weak var NameBrand: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func CheckCaseEmptyOrNot() -> Bool {
        if (StoryBrand.text?.isEmpty == true && placeBrand.text?.isEmpty == true && NameBrand.text?.isEmpty == true )
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    @IBAction func PushButtonValid(_ sender: Any)
    {
        if (CheckCaseEmptyOrNot()==true)
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newBrand = NSEntityDescription.insertNewObject(forEntityName: "Brand", into: context)

            newBrand.setValue(NameBrand.text , forKey: "name")
            newBrand.setValue(placeBrand.text , forKey: "place")
            newBrand.setValue(StoryBrand.text , forKey : "history")
            newBrand.setValue(NoteBrand.text, forKey: "note")
            
            do
            {
                try context.save()
                print("Save")
            }
            catch
            {
                print("Erreur !! impossible de sauvegarder les données")
            }
        }
            
        else
        {
            print ("Veuillez remplir tous les champs")
        }
        
   }
}

    

