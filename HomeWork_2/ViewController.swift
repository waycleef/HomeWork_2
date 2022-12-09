//
//  ViewController.swift
//  HomeWork_2
//
//  Created by Алишер Маликов on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum TrafficLightsColors {
        case red, yellow, green
    }

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    

    
    private var trafficLightscolors = TrafficLightsColors.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightOff
        orangeLight.alpha = lightOff
        greenLight.alpha = lightOff
        
        startButton.layer.cornerRadius = 10
        
    }

    override func viewWillLayoutSubviews() {
        
        let radius = redLight.frame.width / 2
        
        redLight.layer.cornerRadius = radius
        orangeLight.layer.cornerRadius = radius
        greenLight.layer.cornerRadius = radius
        
        
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        

        switch trafficLightscolors {
        case .red:
            redLight.alpha = lightOn
            greenLight.alpha = lightOff
            trafficLightscolors = .yellow
        case .yellow:
            redLight.alpha = lightOff
            orangeLight.alpha = lightOn
            trafficLightscolors = .green
        case .green:
            orangeLight.alpha = lightOff
            greenLight.alpha = lightOn
            trafficLightscolors = .red
        }
        
    }
}

