//
//  ViewController.swift
//  Postcard
//
//  Created by Jerry Douglas MD on 9/20/14.
//  Copyright (c) 2014 Jerry Douglas MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var messageName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func SendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.hidden = false
        messageName.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageName.text = enterNameTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        messageName.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    }
    
}

