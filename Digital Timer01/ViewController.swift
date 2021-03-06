//
//  ViewController.swift
//  Digital Timer01
//
//  Created by D7703_23 on 2018. 4. 11..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var timeswitch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        //클로저(Closure)의 사용
//        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (myTimer) in
//            self.updateTime()
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        timelbl.text = formatter.string(from: date)
    }
    @IBAction func timeswitchaction(_ sender: Any) {
        if timeswitch.isOn == true {
            // 클로저(closure)의 사용
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()})
        } else {
            myTimer.invalidate()
        }

    }
    

}

