//
//  ViewController.swift
//  DatePicker
//
//  Created by Jinkyu Kim on 2020/04/12.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 타이머가 구동되면 실행할 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0  // 타이머의 간격은 1초
    var count = 0   // 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    
    @IBOutlet var lblCurrentTime: UILabel!  // 현재 시간 레이블의 아웃렛 변수
    @IBOutlet var lblPickerTime: UILabel!   // 선택 시간 레이블의 아웃렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 타이머 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender // 전달된 인수 저장
        
        let formatter = DateFormatter() // DateFormatter 클래스 상수 선언
        formatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분 EEE" // formatter의 dateFormat 속성을 설정
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        let date = NSDate() // 현재시간을 가져옴
        
        let formatter = DateFormatter() // DateFormatter라는 클래스의 상수 formatter를 선언
        formatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분 ss초 EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
    }
    
}

