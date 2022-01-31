//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kevork Atinizian on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You are Awesome!"
        imageView.image = UIImage(named: "When-Borat-Says-My-Wife")
    }
    
}

