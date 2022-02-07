//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kevork Atinizian on 1/24/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = 0
    var messageNumber = 0
    var soundNumber = -1
    let totalNumberOfImages = 2
    let totalNumberOfSounds = 3
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("ERROR")
            }
            }else {
            print("ERROR")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
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
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber,upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber,upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber,upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn {
        playSound(name: "sound\(soundNumber)")
        }
        
//        var newMessage = messages[Int.random(in: 0...messages.count-1)]
//        while messageLabel.text == newMessage {
//            newMessage = messages[Int.random(in: 0...messages.count-1)]
//        }
//        messageLabel.text = newMessage
//        //messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
//
//        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        while imageView.image == newImage {
//            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        }
//        imageView.image = newImage
//
//
//        var newSoundNumber: Int
//        repeat {
//            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
//        }while soundNumber == newSoundNumber
//        soundNumber = newSoundNumber
//        print("New Sound Number Is \(soundNumber)")
//        playSound(name: "sound\(soundNumber)")
        
       // imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber+=1
//        if messageNumber == messages.count{
//            messageNumber = 0
//        }
//
//        let imageName = "image" + String(imageNumber)
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == totalNumberOfImages{
//            imageNumber = 0
//        }
        //let imageName = "image\(imageNumber)"
        
//        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
//        //imageView.image = UIImage(named:"image\(Int.random(in: 0...totalNumberOfImages))")
//        //var number = int.random(in:)
//        let result = Int.random(in:0...1)
//        if result == 1{
//                imageView.image = UIImage(named: "When-Borat-Says-My-Wife")
//        }else{
//            imageView.image = UIImage(named: "How-I-Actually-Look-Infront-Of-My-Crush")
//            }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
}

