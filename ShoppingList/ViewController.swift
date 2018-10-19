//
//  ViewController.swift
//  ShoppingList
//
//  Created by Sreeram Ramakrishnan on 2018-10-18.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var TextFields: [UITextField]!
    
    @IBAction func Reset(_ sender: UIButton) {
        TextFields.forEach({ $0.text = "" })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
}


