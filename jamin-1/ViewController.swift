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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sliderChanged(sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: CGFloat(1.0))
        updateStatusBar()
    }
    
    func updateStatusBar() {
        let backgroundColor = self.view.backgroundColor!
        var greyscale: CGFloat = 0.0
        backgroundColor.getWhite(&greyscale, alpha: nil)
        let statusBarStyle: UIStatusBarStyle = greyscale > 0.5 ? .Default : .LightContent
        UIApplication.sharedApplication().setStatusBarStyle(statusBarStyle, animated: false)
        
    }
}

