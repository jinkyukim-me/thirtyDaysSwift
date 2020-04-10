//
//  ViewController.swift
//  HiThere
//
//  Created by Jinkyu Kim on 2020/04/10.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var welcomeTitle: UILabel!
    @IBOutlet var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        welcomeTitle.text = "환영합니다. " + inputText.text! + "님"
    }
    
}

