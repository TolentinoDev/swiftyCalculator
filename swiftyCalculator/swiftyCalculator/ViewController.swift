//
//  ViewController.swift
//  swiftyCalculator
//
//  Created by Ryan Tolentino on 4/9/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var addition: UIButton!
    
    @IBOutlet weak var minus: UIButton!
    
    @IBOutlet weak var multiply: UIButton!
    
    @IBOutlet weak var divide: UIButton!
    
    @IBOutlet weak var modular: UIButton!
    
    
    @IBOutlet weak var posNeg: UIButton!
    
    
    @IBOutlet weak var point: UIButton!
    var numberonTheScreen: Double = 0
    var previousNumber: Double! = 0
    var operation = 0
    var ifPreformingOperation = false
    var isNumberNegative = false
    //var button.isEnabled = true
    
    // Operations tags = = 20 - +/- = 26
    
    // AC tag = 27
    
    // . tag = 28
    
    override func viewDidLoad() {
        output.text = ""
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var output: UILabel!

    
    @IBAction func numberPressed(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        if ifPreformingOperation == true {
            // set it back to false
            ifPreformingOperation = false
            //set the label to = the tag value
            output.text = String(tag)
            // Display number on the screen
            numberonTheScreen = Double(output.text!)!
        }
        else{
            output.text = output.text! + String(tag)
            numberonTheScreen = Double(output.text!)!
        }
        
    }
    
    @IBAction func operationPressed(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        
        //AC
        if tag == 27{
            numberonTheScreen = 0
            previousNumber = 0
            operation = 0
            output.text = ""
            addition.isEnabled = true
            minus.isEnabled = true
            multiply.isEnabled = true
            divide.isEnabled = true
            modular.isEnabled = true
            posNeg.isEnabled = true
        }
        //((=,20),(+,21),(-,22),(X,23),(/,24),(%,25),(+/-,26)
        if tag == 21{
            ifPreformingOperation = true
            previousNumber = Double(output.text!)!
            output.text = "+"
            operation = tag
            addition.isEnabled = false
        }
        else if tag == 22 {
            ifPreformingOperation = true
            previousNumber = Double(output.text!)!
            output.text = "-"
            operation = tag
            minus.isEnabled = false
        }
        else if tag == 23 {
            ifPreformingOperation = true
            previousNumber = Double(output.text!)!
            output.text = "*"
            operation = tag
            multiply.isEnabled = false
            
        }
        else if tag == 24 {
            ifPreformingOperation = true
            previousNumber = Double(output.text!)!
            output.text = "/"
            operation = tag
            divide.isEnabled = false
            
        }
        else if tag == 25 {
            ifPreformingOperation = true
            previousNumber = Double(output.text!)!
            output.text = "%"
            operation = tag
            modular.isEnabled = false
            
        }
        else if tag == 26 {
            ifPreformingOperation = true
            print(previousNumber!)
            /*
            if String(previousNumber) != ""{
                posNeg.isEnabled = false
            }
 */
            output.text = String?( String("-") + String(numberonTheScreen))
            isNumberNegative = true
            operation = tag
        //positive.isEnabled = false
            }
            
            else if tag == 28 {
                ifPreformingOperation = true
                previousNumber = Double(output.text!)!
                output.text = String?( String(format: "%.0f", numberonTheScreen) + String("."))
            print(output.text!)
                operation = tag
                //point.isEnabled = false

            }

 
            //equals operations
        else if tag == 20{
            
            if operation == 21{
                output.text = String(previousNumber + numberonTheScreen)
                addition.isEnabled = true
                minus.isEnabled = true
                multiply.isEnabled = true
                divide.isEnabled = true
                modular .isEnabled = true
                point.isEnabled = true
            }else if operation == 22{
                output.text = String(previousNumber - numberonTheScreen)
                addition.isEnabled = true
                minus.isEnabled = true
                multiply.isEnabled = true
                divide.isEnabled = true
                modular .isEnabled = true
                point.isEnabled = true
            }else if operation == 23{
                output.text = String(previousNumber * numberonTheScreen)
                addition.isEnabled = true
                minus.isEnabled = true
                multiply.isEnabled = true
                divide.isEnabled = true
                modular .isEnabled = true
                point.isEnabled = true
            }
            else if operation == 24{
                output.text = String(previousNumber / numberonTheScreen)
                if output.text == "inf"
                {
                    output.text = "Dumbo"
                }
                addition.isEnabled = true
                minus.isEnabled = true
                multiply.isEnabled = true
                divide.isEnabled = true
                modular .isEnabled = true
                point.isEnabled = true
            }
            else if operation == 25{
                output.text = String(previousNumber.truncatingRemainder(dividingBy: numberonTheScreen))
                addition.isEnabled = true
                minus.isEnabled = true
                multiply.isEnabled = true
                divide.isEnabled = true
                modular .isEnabled = true
                point.isEnabled = true
            }
    
    
    }


}

}
