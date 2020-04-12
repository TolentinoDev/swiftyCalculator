//
//  ViewController.swift
//  swiftyCalculator
//
//  Created by Ryan Tolentino on 4/9/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberonTheScreen: Double = 0
    var previousNumber: Double = 0
    var operation = 0
    
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
        
        output.text = output.text! + String(tag)
    }
    
    @IBAction func operationPressed(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        
        //AC
        if tag == 27{
            numberonTheScreen = 0
            previousNumber = 0
            operation = 0
            output.text = ""
        }
    }
    
    



}

