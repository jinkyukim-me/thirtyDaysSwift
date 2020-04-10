//
//  ViewController.swift
//  imageViewerNext
//
//  Created by Jinkyu Kim on 2020/04/10.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxImage = 10
    var numImage = 1
    
    @IBOutlet var imgSushi: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPrevSushi(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
    }
    @IBAction func btnNextSushi(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgSushi.image = UIImage(named: imageName)
    }
    
}

