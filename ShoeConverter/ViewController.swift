//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Rosemarie Day on 5/29/15.
//  Copyright (c) 2015 rjd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // variables
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var WomensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    // convert button pressed
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false                   // make unhidden label
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensShoeSizeTextField.text = "" // clears text field to placeholder text
        
    }

    @IBAction func convertButtonPressedWomens(sender: UIButton) {
        
        let sizeFromTextField = Double((WomensShoeSizeTextField.text as NSString).doubleValue) // converts string to a double
        let conversionConstant = 30.5
        womensShoeSizeLabel.hidden = false
        womensShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
        WomensShoeSizeTextField.text = ""
        
    }
}
