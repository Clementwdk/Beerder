//
//  NewBarViewController.swift
//  Beerder
//
//  Created by Developer on 26/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit
import CoreData

class NewBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var adresse: UITextField!
    @IBOutlet weak var horraire: UITextField!
    @IBOutlet weak var note: UITextField!
    @IBOutlet weak var prix: UITextField!
    @IBOutlet weak var nom: UITextField!
    
    
    @IBAction func PushButtonNewBar(_ sender: Any)
    {
        if (adresse.text != "" && horraire.text != "" && prix.text != "" && nom.text != "")
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newBar = NSEntityDescription.insertNewObject(forEntityName: "Bar", into: context)
            
            newBar.setValue(nom.text,forKey: "nom")
            newBar.setValue(adresse.text, forKey: "adresse")
            newBar.setValue(horraire.text, forKey : "horraire")
            newBar.setValue(prix,forKey: "prix")
            newBar.setValue(note ,forKey: "note")
            
            
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
    }
    
    

}
