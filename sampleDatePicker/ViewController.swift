//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Tatsuki Nakatsuka on 2017/10/23.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //DateFormatterを使って文字型から日付型に変換する。
        //let （定数）プロパティ変更可能。　（）←何か処理してますというサイン。時差補正にも使える。
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //選択可能な最小値を決定（2017/01/01）
        myDatePicker.minimumDate = df.date(from: "2017/01/01")
        
        
        //選択可能な最大値を決定（2017/12/31）
        myDatePicker.maximumDate = df.date(from: "2017/12/31")

        //初期値を設定
        myDatePicker.date = df.date(from: "2017/10/01")!
    }

    //選択された日付が変わった時発動。  日記を作るのにも適する！
    @IBAction func changeDate(sender: UIDatePicker) {
    
         print(sender.date)
        
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //時差を補正する（日本時間に設定）
        df.locale = Locale(identifier: "ja_JP")
        
        print(df.string(from: sender.date))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

