//
//  ViewController.swift
//  KemFlash
//
//  Created by Jim Appiah on 3/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BackTap: UILabel!
    @IBOutlet weak var Frontap: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Frontap.isHidden = true
        
    
    }
//ChemistryFlash

    @IBAction func didTapOnFlashcard(_ sender: Any) {
    }
    func updateFlashcard(question:String, answer:String) {
        BackTap.text = answer
        Frontap.text = question
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashCardContoller = self
    }
}

