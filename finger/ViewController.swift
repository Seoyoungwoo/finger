//
//  ViewController.swift
//  finger
//
//  Created by D7703_17 on 2018. 3. 27..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var txt: UITextField!
      @IBOutlet weak var result: UILabel!
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            txt.delegate = self
      }
      

      override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      }

      @IBAction func guess(_ sender: Any) {
            // 랜덤 숫자 생성
            let number = arc4random_uniform(6)
            print(number)
            let numberString = String(number)
            
            if txt.text == numberString {
                  result.text = "빙고!!"
            }
            else {
                  result.text = "실패!! Try again!! \n 숨겨진 숫자는 현재 \(number)"
            }
      }
      
}

