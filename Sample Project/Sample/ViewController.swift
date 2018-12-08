//
//  ViewController.swift
//  LogLevels
//
//  Created by Noah Prado on 12/7/18.
//  Copyright © 2018 Noah Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LogLevel(.assert)
        
        Log("assert", level: .assert)
        Log("error", level: .error)
        Log("warn", level: .warn)
        Log("info", level: .info)
        Log("debug", level: .debug)
        Log("verbose", level: .verbose)

    }
}

