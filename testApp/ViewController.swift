//
//  ViewController.swift
//  testApp
//
//  Created by Anantha Krishnan K G on 27/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit
import KGPressableButton

class ViewController: UIViewController {

    @IBOutlet var button: KGPressableButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func start(_ sender: Any) {
        
        button.performAction()
    }


}

