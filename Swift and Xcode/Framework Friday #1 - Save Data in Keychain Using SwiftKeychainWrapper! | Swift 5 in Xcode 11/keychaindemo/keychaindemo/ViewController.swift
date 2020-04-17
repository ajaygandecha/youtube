//
//  ViewController.swift
//  keychaindemo
//
//  Created by Ajay Gandecha on 4/17/20.
//  Copyright © 2020 Ajay Gandecha. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let keychainData = KeychainWrapper.standard.string(forKey: "samplekey_inputfield")
        
        if keychainData != nil {
            textLabel.text = keychainData
        }
        else {
            textLabel.text = "Input text here..."
        }
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        textLabel.text = inputField.text
        KeychainWrapper.standard.set(inputField.text ?? "", forKey: "samplekey_inputfield")
    }
    
}

