//
//  ViewController.swift
//  urlOpener
//
//  Created by Ajay Gandecha on 12/9/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var linkButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        linkButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
    }

    @objc func openLink() {
        
        // If let only runs the code inside if it can successfuly unwrap the optional URL object.
        
        if let urlToOpen = URL(string: "https://amazon.com") {
            
            // Open the URL in the preferred browser
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                
                print("Link was opened successfully")
            }
        }
    }
}

