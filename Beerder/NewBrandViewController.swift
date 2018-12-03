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
        print("kc")
        if (CheckCaseEmptyOrNot()==true)
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newBeer = NSEntityDescription.insertNewObject(forEntityName: "Brand", into: context)

            //newBeer.setValue(NameBrand.text,forKey: "name")
            // newBeer.setValue(placeBrand.text, forKey: "place")
           // newBeer.setValue(StoryBrand.text, forKey : "history")
            newBeer.setValue("Leffe",forKey: "name")
            newBeer.setValue("FRANCE" ,forKey: "place")
            newBeer.setValue("BON", forKey : "history")
            
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
            
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
            let managedContext = appDelegate.persistentContainer.viewContext
            let beerEntity = NSEntityDescription.entity(forEntityName: "Brand", in: managedContext)!
 
            
            let newBeer = NSManagedObject(entity : beerEntity ,insertInto : managedContext)
             newBeer.setValue("Leffe",forKeyPath: "name")
             newBeer.setValue("FRANCE" ,forKey: "place")
             newBeer.setValue("BON", forKey : "history")
            
         do
         {
            try managedContext.save()
            print("Save")
         }
         catch
         {
            print("Erreur !! impossible de sauvegarder les données")
         }
         }
    
        }

    

