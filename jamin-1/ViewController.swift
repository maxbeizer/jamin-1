//
//  ViewController.swift
//  jamin-1
//
//  Created by Max Beizer on 2/2/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // allow app to work upside down (along with the checkbox in general)
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sliderChanged(sender: UISlider) {
        let newColor = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: CGFloat(1.0))
        self.view.backgroundColor = newColor
        updateStatusBarForColor(newColor)
    }
    
  
}

