//
//  ViewController.swift
//  ImageViewPorsche
//
//  Created by Jinkyu Kim on 2020/04/10.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imgBlack: UIImage?
    var imgRed: UIImage?
    var imgWhite: UIImage?
    var imgDarkBlue: UIImage?
    var imgLightBlue: UIImage?
    var imgYellow: UIImage?
    
    
    @IBOutlet var carImage: UIImageView!
    @IBOutlet var colorBlack: UIButton!
    @IBOutlet var colorRed: UIButton!
    @IBOutlet var colorWhite: UIButton!
    @IBOutlet var colorDarkBlue: UIButton!
    @IBOutlet var colorLightBlue: UIButton!
    @IBOutlet var colorYellow: UIButton!
    
    @IBAction func btnBlack(_ sender: UIButton) {
        carImage.image = imgBlack
    }
    
    @IBAction func btnRed(_ sender: UIButton) {
        carImage.image = imgRed
    }
    
    @IBAction func btnWhite(_ sender: UIButton) {
        carImage.image = imgWhite
    }
    
    @IBAction func btnDarkBlue(_ sender: UIButton) {
        carImage.image = imgDarkBlue
    }
    
    @IBAction func btnLightBlue(_ sender: UIButton) {
        carImage.image = imgLightBlue
    }
    
    @IBAction func btnYellow(_ sender: UIButton) {
        carImage.image = imgYellow
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgBlack = UIImage(named: "porscheBlack.png")
        imgRed = UIImage(named: "porscheRed.png")
        imgWhite = UIImage(named: "porscheWhite.png")
        imgDarkBlue = UIImage(named: "porscheDarkBlue.png")
        imgLightBlue = UIImage(named: "porscheLightBlue.png")
        imgYellow = UIImage(named: "porscheYellow.png")
        
        carImage.image = imgBlack
        
    }


}

