//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by jlareo on 22/7/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPressed(sender: AnyObject) {
        var number = sender.currentTitle

        if isTypingNumber {
            displayLabel.text! +=   number!!
        }
        else{
            displayLabel.text = number
            isTypingNumber = true
        }
    }

    @IBAction func operatorButtonPressed(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = displayLabel.text!.toInt()!
        operation = sender.currentTitle!!
    }

    @IBAction func equalsButtonPressed(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = displayLabel.text!.toInt()!
        
        if operation == "+"{
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }

        displayLabel.text = "\(result)"
    }
}

