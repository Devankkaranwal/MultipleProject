//
//  ViewController.swift
//  MultipleProject
//
//  Created by Devank on 24/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var imgLight: UIImageView!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imgLamp: UIImageView!
    
    var gradientLayer: CAGradientLayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let darkGreen = UIColor(red: 47/255, green: 63/255, blue: 52/255, alpha: 1.0)

               gradientLayer = CAGradientLayer()
               gradientLayer.frame = uiView.bounds
               gradientLayer.colors = [UIColor.yellow.cgColor, darkGreen.cgColor]
               gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
               gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)

               uiView.layer.insertSublayer(gradientLayer, at: 0)

               imgLight.image = imgLight.image?.withRenderingMode(.alwaysTemplate)
               imgLight.tintColor = UIColor.yellow
        
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            imgLight.isHidden = false
        } else {
            imgLight.isHidden = true
        }
    }

    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let darkGreen = UIColor(red: 47/255, green: 63/255, blue: 52/255, alpha: 1.0)
            let yellow = UIColor.yellow

            let minValue = CGFloat(sender.minimumValue)
            let maxValue = CGFloat(sender.maximumValue)
            let valueRange = maxValue - minValue
            let sliderValue = CGFloat(sender.value)

            let fraction = (sliderValue - minValue) / valueRange

            let interpolatedColor = UIColor.interpolateColor(from: darkGreen, to: yellow, withFraction: fraction)

            gradientLayer.colors = [interpolatedColor.cgColor, darkGreen.cgColor]

            if sliderValue == minValue {
                switchBtn.isOn = false// Set the switch off
                imgLight.isHidden = true
            }else{
                switchBtn.isOn = true
                imgLight.isHidden = false
            }
        
      }
    

}

