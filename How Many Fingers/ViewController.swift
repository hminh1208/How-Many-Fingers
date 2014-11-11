//
//  ViewController.swift
//  How Many Fingers
//
//  Created by minh phan on 11/4/14.
//  Copyright (c) 2014 minh phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var guess: UITextField!
    
    @IBAction func guessTapped(sender: AnyObject) {
        
        var number = arc4random() % 6
        var numberString = String(number)
        var guessNum = guess.text
        
        if(numberString == guessNum){
            result.text = "You got it right"
        }else{
            result.text = "That wasn't right - I was holding up \(number)"
        }
    }
    
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

