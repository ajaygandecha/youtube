//
//  ViewController.swift
//  roundedButton
//
//  Created by Ajay Gandecha on 12/8/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundedCornerButton: UIButton!
    @IBOutlet weak var circleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Rounded Button
        
        roundedCornerButton.layer.cornerRadius = 15
        roundedCornerButton.layer.masksToBounds = true
        
        // Circle Button
        
        circleButton.layer.cornerRadius = circleButton.frame.width / 2
        circleButton.layer.masksToBounds = true
        
        // Programmatically create a rounded button
        
        let myRoundedButton = UIButton(frame: CGRect(x: 100, y: 450, width: 160, height: 100))
        myRoundedButton.backgroundColor = .green
        myRoundedButton.titleLabel?.textColor = .white
        myRoundedButton.setTitle("Rounded Button 2", for: .normal)
        myRoundedButton.layer.cornerRadius = 15
        myRoundedButton.layer.masksToBounds = true
        view.addSubview(myRoundedButton)

    }


}

