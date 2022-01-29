//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kevork Atinizian on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "Fabulous? That's You!"
        print("viewDidLoad has run!")
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😊Message button was pressed!")
        messageLabel.text = "You are Awesome!"
    }
    
}

