//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by Felicia Weathers on 8/2/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func saveButtonTapped(sender: UIButton) {
        
        textLabel.text = textField.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Dismisses keyboard when touch outside textfield
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    // Dismisses keyboard when the return button is tapped; however, only if the UITextFirledDelegate is set
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
}

