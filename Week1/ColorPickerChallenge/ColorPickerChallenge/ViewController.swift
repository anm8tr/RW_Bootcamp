//
//  ViewController.swift
//  ColorPickerChallenge
//
//  Created by Richard Garrison on 5/29/20.
//  Copyright © 2020 Richard Garrison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //@IBOutlet weak var colorView: UIView!
    @IBOutlet weak var colorNameTextField: UILabel!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    var red : Float = 0
    var green : Float = 0
    var blue : Float = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.tag = 1
        greenSlider.tag = 2
        blueSlider.tag = 3
        
        }
    @IBAction func redSliderMoved(_ sender: UISlider) {
        let redColor = String(format: "%.0f", redSlider.value)
        redLabelValue.text = "\(redColor)"

        let greenColor = String(format: "%.0f", greenSlider.value)
        greenLabelValue.text = "\(greenColor)"

        let blueColor = String(format: "%.0f", blueSlider.value)
            blueLabelValue.text = "\(blueColor)"


    }
    
    @IBAction func changeViewColor(_ sender: UISlider) {
        switch sender.tag {
        case 1: self.red = redSlider.value
            break;
        case 2: self.green = greenSlider.value
            break;
        case 3: self.blue = blueSlider.value
            break;
        default:
            break;
        }

        self.view.backgroundColor =  UIColor(red: CGFloat( self.red/255.0), green: CGFloat(self.green/255.0), blue: CGFloat(self.blue/255.0), alpha: 1.0)
        
        
}
    
    @IBAction func setColorAlertWithText(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Set Color", message: "Enter a name for the color", preferredStyle: .alert)
        alert.view.tintColor = .systemBlue
        
        alert.addTextField { textField in
            textField.placeholder = "Enter color name"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
       let confirmAction = UIAlertAction(title: "OK", style: .default) { _ in
        self.colorNameTextField.text = alert.textFields?.first?.text ??  "Please enter a name"
            }
        alert.addAction(cancelAction)
        alert.addAction(confirmAction)
        
        present(alert, animated: true, completion: nil)
            
    }
    
    
    
}
    
    
    
    
    
    










////@IBOutlet var colorViewController: UIView!
//
//var red: Float = 0
//var green: Float = 0
//var blue: Float = 0
//
//let roundedValue = {
//
//}
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view.
//    redSlider.tag = 1
//    greenSlider.tag = 2
//    blueSlider.tag = 3
//
//    rdLabelValue.tag = 1
//    grLabelValue.tag = 2
//    blLabelValue.tag = 3
//
//}
//
//@IBAction func colorViewController(_ sender: UISlider) {
//    switch sender.tag {
//    case 1: self.red = redSlider.value;
//        break;
//    case 2: self.green = greenSlider.value
//        break;
//    case 3: self.blue = blueSlider.value
//        break;
//    default:
//        break;
//    }
//    self.view.backgroundColor =  UIColor(red: CGFloat( self.red/255.0), green: CGFloat(self.green/255.0), blue: CGFloat(self.blue/255.0), alpha: 1.0)
//
//}
//
//@IBAction func changeSliderValues(_ sender: UISlider) {
//    switch sender.tag {
//    case 1: rdLabelValue.text = "\(redSlider.value.rounded())"
//        break;
//    case 2: grLabelValue.text = "\(greenSlider.value.rounded())"
//        break;
//    case 3: blLabelValue.text = "\(blueSlider.value.rounded())"
//        break;
//    default:
//        break;
//    }
