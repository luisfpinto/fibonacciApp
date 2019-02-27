//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Luis Pinto on 26/02/2019.
//  Copyright © 2019 Luis Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(includesZero: true, numberOfItemsInSequence: 2)

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZero: UISwitch!
    
    @IBOutlet weak var includesZeroLabel: UILabel!
    
    @IBOutlet weak var numberOfItems: UITextView!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence() {
       fibonacciSequence = FibonacciSequence(includesZero: includesZero.isOn, numberOfItemsInSequence: Int(numberOfItemsSlider.value))
        textView.text = String(describing: fibonacciSequence.values)
        includesZeroLabel.text = includesZero.isOn ? "Yes" : "No"
        numberOfItems.text = String(roundf(numberOfItemsSlider.value))
        
        print(fibonacciSequence.values)
    }


}

