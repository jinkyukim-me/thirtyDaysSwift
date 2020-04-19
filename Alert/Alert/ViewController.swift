//
//  ViewController.swift
//  Alert
//
//  Created by Jinkyu Kim on 2020/04/19.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 상수 및 변수
    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    
    var isLampOn = true
    
    
    

    @IBOutlet var lampImg: UIImageView!

    
    
    
    // 이미지 보여주기
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }

    
    
    // [켜기] 버튼 클릭 시 동작하는 함수
    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn == true) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
            
        }
        else {
            lampImg.image = imgOn
            isLampOn = true
        }
    }
    
    
    // [끄기] 버튼 클릭 시 동작하는 함수
    @IBAction func btnLampOff(_ sender: UIButton) {

        if isLampOn {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
                ACTION in self.lampImg.image = self.imgOff
                self.isLampOn=false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    
    // [제거] 버튼 클릭 시 동작하는 함수
    @IBAction func btnLampRemove(_ sender: UIButton) {
        
            let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction(title: "아니오, 끕니다(off).", style: UIAlertAction.Style.default, handler: {
                ACTION in self.lampImg.image = self.imgOff
                self.isLampOn=false
            })
            let onAction = UIAlertAction(title: "아니오, 켭니다(on).", style: UIAlertAction.Style.default) {
                ACTION in self.lampImg.image = self.imgOn
                self.isLampOn=true
            }
            let removeAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.destructive, handler: {
                ACTION in self.lampImg.image = self.imgRemove
                self.isLampOn=false
            })
            
            lampRemoveAlert.addAction(offAction)
            lampRemoveAlert.addAction(onAction)
            lampRemoveAlert.addAction(removeAction)
            
            present(lampRemoveAlert, animated: true, completion: nil)
        }
        

    
}

