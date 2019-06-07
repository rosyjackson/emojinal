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
    
    let customMessages = [
        "disappointed": ["cheer up buttercup", "take a deep breathe", "do you need to talk?"],
                          "worried": ["cheer up buttercup2", "take a deep breathe2", "do you need to talk?2"]]
    let number = Int.random(in: 0 ..< 3)


    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
//        click on emoji -> shows message based on emoji

        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]

        
        let alertController = UIAlertController(title: "Emoji", message: "\(emojiMessage)", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)

    }
    
   


}

