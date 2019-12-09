//
//  ViewController.swift
//  customFonts
//
//  Created by Ajay Gandecha on 12/8/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Adding custom fonts
        
        textLabel.font = UIFont(name: "Lato-Regular", size: 18)
        textButton.titleLabel!.font = UIFont(name: "Lato-Bold", size: 20)
    }


}

