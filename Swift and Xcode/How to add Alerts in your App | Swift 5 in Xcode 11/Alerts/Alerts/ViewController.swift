//
//  ViewController.swift
//  Alerts
//
//  Created by Ajay Gandecha on 12/10/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showAlertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        showAlertButton.addTarget(self, action: #selector(showTextViewAlert), for: .touchUpInside)
        
        
    }

    @objc func showAlert() {
        
        // Creating alert view
        
        let alertView = UIAlertController(title: "Alert Title", message: "This is the alert message", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertView.addAction(UIAlertAction(title: "Done", style: .default, handler: { (_) in
            
            print("Done button was pressed")
        }))
        
        // Present alert view
        
        self.present(alertView, animated: true, completion: nil)
    }
    
    @objc func showTextViewAlert() {
        
        // Creating text view alert view
        
        let textAlertView = UIAlertController(title: "Alert Title", message: "This is the alert message 2", preferredStyle: .alert)
        textAlertView.addTextField(configurationHandler: nil)
        textAlertView.textFields![0].placeholder = "My Placeholder"
        textAlertView.addAction(UIAlertAction(title: "Submit", style: .default, handler: { (_) in
            
            print(textAlertView.textFields![0].text!)
        }))
        
        // Present alert view
        
        self.present(textAlertView, animated: true, completion: nil)
    }
}

