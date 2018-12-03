//
//  NewBeerViewController.swift
//  Beerder
//
//  Created by Developer on 26/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit
import CoreData

class NewBeerViewController: UIViewController {

    @IBOutlet weak var Comment: UITextView!
    @IBOutlet weak var Puissan: UITextField!
    @IBOutlet weak var Marque: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var Nom: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    func CheckCaseEmptyOrNot() -> Bool {
        if (Nom.text?.isEmpty == true && Puissan.text?.isEmpty == true && Marque.text?.isEmpty == true && type.text?.isEmpty == true)
        {
            return false
        }
        else
        {
            return true
        }
    }
    @IBAction func PushButtonValid(_ sender: Any) {
        if (CheckCaseEmptyOrNot()==true)
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newBeer = NSEntityDescription.insertNewObject(forEntityName: "Beer", into: context)
            newBeer.setValue(Nom.text,forKey: "name")
            
            for res in TestPrintData(AttributBDD: "brand"){
            if (res == Marque.text){
            newBeer.setValue(Marque.text, forKey: "brand")
                break
            }
            else{
            print("La marque n'existe pas")
                }}
            
            newBeer.setValue(type.text, forKey: "type")
            newBeer.setValue(Puissan.text, forKey : "power")
            newBeer.setValue(Comment.text, forKey : "comment")
            
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
        else{
            print ("Veuillez remplir tous les champs")
        }
    
}
    func TestPrintData(AttributBDD : String) ->  Array<String>
    {
        var myArray: [String] = []
        var i = 0
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Beer")
        
        request.returnsObjectsAsFaults = false
        
        do{
            let results = try context.fetch(request)
            
            if results.count > 0 {
                for r in results as! [NSManagedObject]{
                    i+=1
                    if let nameB = r.value(forKey: AttributBDD) as? String{
                        //print(nameB)
                        myArray.insert(nameB, at : i)
                   }
                }
            }
                
            
        }catch {
            print("Error Affichage données")
        }
          return myArray
    }
  
}
