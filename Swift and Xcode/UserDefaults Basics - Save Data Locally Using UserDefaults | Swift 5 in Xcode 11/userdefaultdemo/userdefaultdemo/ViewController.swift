//
//  ViewController.swift
//  userdefaultdemo
//
//  Created by Ajay Gandecha on 4/14/20.
//  Copyright © 2020 Ajay Gandecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let value = UserDefaults.standard.string(forKey: "myTextData")
        
        if value != nil {
            textLabel.text = value
        }
        else {
            textLabel.text = "Your Text Here"
        }
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        textLabel.text = inputField.text
        UserDefaults.standard.set(inputField.text, forKey: "myTextData")
    }
    
}

