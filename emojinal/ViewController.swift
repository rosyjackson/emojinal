//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
//        click on emoji -> shows message based on emoji
        let alertController = UIAlertController(title: "Emoji", message: "\(emojis.values)", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)

    }
    
    let emojis = ["😞": "disappointed", "😰": "worried"]



}

