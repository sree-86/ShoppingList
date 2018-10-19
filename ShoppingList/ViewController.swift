//
//  File Name: ShoppingList
//
//  Created by Sreeram Ramakrishnan on 2018-10-18.
//  Student ID: 301042442
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var TextFields: [UITextField]!  //Textfield Outlet Collection
    
    @IBAction func Reset(_ sender: UIButton) { //Reset Button Action
        TextFields.forEach({ $0.text = "" })   //changes text of all text fields to nil
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))  //used to hide keyboard when clicked anywhere on screen
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @IBAction func color1(_ sender: UIBarButtonItem) { //Color 1 in Color Swatch
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.green }, completion: nil)  //switch background color to green
    }
    
    @IBAction func gray(_ sender: UIBarButtonItem) {  //Color 2 in Color Swatch
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.gray}, completion: nil)  //switch background color to gray
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
}


