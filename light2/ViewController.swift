//
//  ViewController.swift
//  light2
//
//  Created by Sergey Medvedev on 26.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSquare.alpha = 1
        redSquare.layer.cornerRadius = redSquare.frame.width / 2
        
        yellowSquare.alpha = 0.3
        yellowSquare.layer.cornerRadius = redSquare.frame.width / 2
        
        greenSquare.alpha = 0.3
        greenSquare.layer.cornerRadius = redSquare.frame.width / 2
        
        // Do any additional setup after loading the view.
    }
    @IBAction func startButton(_ sender: UIButton) {
        if redSquare.alpha == 1 {
            redSquare.alpha = 0.3
            yellowSquare.alpha = 0.3
            greenSquare.alpha = 1
        } else if greenSquare.alpha == 1{
            greenSquare.alpha = 0.3
            redSquare.alpha = 0.3
            yellowSquare.alpha = 1
        } else if yellowSquare.alpha == 1 {
            yellowSquare.alpha = 0.3
            greenSquare.alpha = 0.3
            redSquare.alpha = 1
        }
    }
    

}

