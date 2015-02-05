//
//  Utilities.swift
//  jamin-1
//
//  Created by Max Beizer on 2/4/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import Foundation
import UIKit

func updateStatusBarForColor(backgroundColor: UIColor) {
    var greyscale: CGFloat = 0.0
    backgroundColor.getWhite(&greyscale, alpha: nil)
    let statusBarStyle: UIStatusBarStyle = greyscale > 0.5 ? .Default : .LightContent
    UIApplication.sharedApplication().setStatusBarStyle(statusBarStyle, animated: false)

}