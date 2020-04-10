//
//  ViewController.swift
//  helloThere
//
//  Created by Jinkyu Kim on 2020/04/11.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var welcomeText: UILabel!
    @IBOutlet var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSend(_ sender: UIButton) {
       welcomeText.text = "You did it!, " + inputText.text!
    }
}

