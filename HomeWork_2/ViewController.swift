//
//  ViewController.swift
//  HomeWork_2
//
//  Created by Алишер Маликов on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        
        let radius = redLight.frame.width / 2
        
        redLight.layer.cornerRadius = radius
        orangeLight.layer.cornerRadius = radius
        greenLight.layer.cornerRadius = radius
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
    }


    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)

        if round(redLight.alpha * 10) / 10 == 0.3 && round(orangeLight.alpha * 10) / 10 == 0.3 && round(greenLight.alpha * 10) / 10 == 0.3 {
            redLight.alpha = 1
        } else if round(redLight.alpha * 10) / 10 == 1 && round(orangeLight.alpha * 10) / 10 == 0.3 && round(greenLight.alpha * 10) / 10 == 0.3 {
            redLight.alpha = 0.3
            orangeLight.alpha = 1
        } else if round(redLight.alpha * 10) / 10 == 0.3 && round(orangeLight.alpha * 10) / 10 == 1 && round(greenLight.alpha * 10) / 10 == 0.3 {
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            startButton.setTitle("Start", for: .normal)
            greenLight.alpha = 0.3
        }
    }
}

