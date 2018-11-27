//
//  EditAppDataViewController.swift
//  Beerder
//
//  Created by Developer on 26/11/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class EditAppDataViewController: UIViewController {

    @IBOutlet weak var EditDataButton: UIButton!
    @IBOutlet weak var AddDataButton: UIButton!
    @IBAction func BeerChangedView(_ sender: Any) {
        let segmentedIndex = AppDataTypeSegmentedController.selectedSegmentIndex
        print(segmentedIndex)
        
        switch segmentedIndex {
            
        case 0:
            print("zero sélectionné")
            AddDataButton.setTitle("Ajouter bière", for: .normal)
            EditDataButton.setTitle("Modifier bière", for: .normal)
        case 1:
            print("Un sélectionné")
            AddDataButton.setTitle("Ajouter bar", for: .normal)
            EditDataButton.setTitle("Modifier bar", for: .normal)
        
        case 2:
            print("deux sélectionné")
            AddDataButton.setTitle("Ajouter marque", for: .normal)
            EditDataButton.setTitle("Modifier marque", for: .normal)
        default:
            print("rien de sélectionné")
        }
        
    }
    @IBAction func EditDataButtonSwitch(_ sender: UIButton) {
    }
    @IBAction func AddDataButtonSwitch(_ sender: UIButton) {
        let segmentedIndex = AppDataTypeSegmentedController.selectedSegmentIndex
        switch segmentedIndex{
        case 0:
            //performSegue(withIdentifier: Add, sender: NewBeerViewController)
            performSegue(withIdentifier: "NewBeerScreen", sender: nil)
        case 1:
            //performSegue(withIdentifier: Add, sender: NewBeerViewController)
            performSegue(withIdentifier: "NewBarScreen", sender: nil)
        case 2:
            //performSegue(withIdentifier: Add, sender: NewBeerViewController)
            performSegue(withIdentifier: "NewBrandScreen", sender: nil)
        default:
            print("rien a evnoyer")
        }
    }

    @IBOutlet weak var AppDataTypeSegmentedController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
