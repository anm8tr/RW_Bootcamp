////
////  backup.swift
////  ColorPickerChallenge
////
////  Created by Richard Garrison on 5/30/20.
////  Copyright © 2020 Richard Garrison. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var redSlider: UISlider!
//    @IBOutlet weak var greenSlider: UISlider!
//    @IBOutlet weak var blueSlider: UISlider!
//    
//    //@IBOutlet weak var colorView: UIView!
//    
//    @IBOutlet weak var redLabelValue: UILabel!
//    @IBOutlet weak var greenLabelValue: UILabel!
//    @IBOutlet weak var blueLabelValue: UILabel!
//    
//    var red : Float = 0
//    var green : Float = 0
//    var blue : Float = 0
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        redSlider.tag = 1
//        greenSlider.tag = 2
//        blueSlider.tag = 3
//        
//        }
//    @IBAction func redSliderMoved(_ sender: UISlider) {
//        let redColor = String(format: "%.0f", redSlider.value)
//        redLabelValue.text = "\(redColor)"
//
//        let greenColor = String(format: "%.0f", greenSlider.value)
//        greenLabelValue.text = "\(greenColor)"
//
//        let blueColor = String(format: "%.0f", blueSlider.value)
//            blueLabelValue.text = "\(blueColor)"
//
//
//    }
//    
//    @IBAction func changeViewColor(_ sender: UISlider) {
//        switch sender.tag {
//        case 1: self.red = redSlider.value
//            break;
//        case 2: self.green = greenSlider.value
//            break;
//        case 3: self.blue = blueSlider.value
//            break;
//        default:
//            break;
//        }
//
//        self.view.backgroundColor =  UIColor(red: CGFloat( self.red/255.0), green: CGFloat(self.green/255.0), blue: CGFloat(self.blue/255.0), alpha: 1.0)
//        
//        
//}
//    
//    
//}
//    
