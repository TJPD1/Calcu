//
//  ViewController.swift
//  Calcu
//
//  Created by Tyrone Dizon on 2018-12-03.
//  Copyright © 2018 Tyrone Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    var math = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton) {
        if math == true
        {
            label.text =  String(sender.tag-1)
            firstNumber = Double(label.text!)!
            math = true
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            firstNumber = Double(label.text!)!
        }
    }
    
    @IBAction func calculations(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            secondNumber = Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                label.text = "/"
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "x"
            }
            else if sender.tag == 14 //Subtract
            {
                label.text = "-"
            }
            else if sender.tag == 15 // Add
            {
                label.text = "+"
            }
            operation = sender.tag
            math = true
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(secondNumber / firstNumber)
            }
            else if operation == 13
            {
                label.text = String(secondNumber * firstNumber)
            }
            else if operation == 14
            {
                label.text = String(secondNumber - firstNumber)
            }
            else if operation == 15
            {
                label.text = String(secondNumber + firstNumber)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            firstNumber = 0
            secondNumber = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

