//
//  ViewController.swift
//  sampleTextView
//
//  Created by Apple on 2017/01/18.
//  Copyright © 2017年 Sasaki Kazuhiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!

    @IBOutlet weak var closeButton: UIButton!
    
    // 画面が起動して立ち上がった時発動
    override func viewDidLoad() {
        super.viewDidLoad()
        print("画面起動しました")
        myTextView.text = "Hello"
        myTextView.textColor = UIColor.blue
        myTextView.font = UIFont(name: "AmericanTypewriter", size: 20)
        myTextView.textAlignment = NSTextAlignment.center
        
        // TODO:myTextViewにHelloを10個表示してください
        // for文使いましょう
        for i in 1...10 {
            myTextView.text = myTextView.text + "Hello"
        }
        
        // TODO: こんにちはnで10個表示してください
        // P.107 while文使いましょう
        var n = 0
        while n < 10 {
            myTextView.text = myTextView.text + "こんにちは\(n)"
            n = n + 1
        }
    }

    // closeボタンが押されたときに発動
    @IBAction func tapClose(_ sender: UIButton) {
        //キーボードを閉じる
        myTextView.resignFirstResponder()
    }
    
    // 使用しているデバイスでメモリ不足を感知した時発動
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

