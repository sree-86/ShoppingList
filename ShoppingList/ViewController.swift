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
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @IBAction func color1(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.green }, completion: nil)
    }
    
    @IBAction func gray(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.gray}, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
}


