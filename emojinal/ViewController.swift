//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let emojis = ["😞": "disappointed", "😰": "worried"]
    
    let customMessages = [ "disappointed": ["cheer up buttercup", "take a deep breathe", "do you need to talk?"], "worried": ["calm down!! it'll be ok", "don't worry, it'll get better", "*sending virtual hug*"]]
//    let number = Int.random(in: 0 ..< 3)
//    let randomName = customMessages.randomElement()

    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text
//        click on emoji -> shows message based on emoji

        let random_num = Int.random(in: 0..<3)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]![random_num]

        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)

    }
    
   


}

