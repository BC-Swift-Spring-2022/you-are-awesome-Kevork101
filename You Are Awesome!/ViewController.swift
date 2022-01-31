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
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        //let messages = ["You are Awesome!",
        //                "You are Great",
        //                "You are Fantastic!",
        //                "When the Genius Bar Needs Help, They //Call You!",
        //                "Fabulous? That's You!",
        //"You've Got the Design Skills of Jony Ive"]
        
        let messages = ["Borat is awesome!",
                        "Is Borat awesome?...NOT",
                        "I hate building apps?...NOT",
                        "This my seester"]
        
        
        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
        //imageView.image = UIImage(named:"image\(Int.random(in: 0...totalNumberOfImages))")
        //var number = int.random(in:)
        var result = Int.random(in:0...1)
        if result == 1{
                imageView.image = UIImage(named: "When-Borat-Says-My-Wife")
        }else{
            imageView.image = UIImage(named: "How-I-Actually-Look-Infront-Of-My-Crush")
            }
    }
    
}

