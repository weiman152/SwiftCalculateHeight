//
//  ViewController.swift
//  SwiftCalculateHeight
//
//  Created by iOS on 2018/5/24.
//  Copyright © 2018年 weiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var dataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /// 创造数据
    private func makeData() {
       dataArray = ["😊😊😊😢😢😢😢😢😢😢😢😢😢😢",
                         "很长很长的文字：很多时候，我们都会被表象所迷惑，在自以为是的浮华里忘记本真。这个社会崇尚个性，可是张扬不是个性，傲慢不羁也不是洒脱，有多少随性而为就有多少始料不及。我们内心认定的好，应该是宁静而淡泊的，人间至味是清欢，而不是被欲望和计较装满。始终相信，万物的起落，都有各自的理由，只要自己的心没有亏欠，就已足够。“佛说，给你修路的，是你自己；埋葬你的，也是你自己；帮助你的，是你自己；成就你的，自然还是你自己。所以佛说：自作自受，自性自度！ ​​​​”那么累了，我们不妨就和花草结个伴；烦了，就安安静静的任心事流浪。",
                         "表情加文字: 🌺哈哈哈哈哈开心就好哇🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸🐸",
                         "// rotation 旋转，需要添加弧度值// 角度转弧度animati.values = [angle2Radion(angle: -100), angle2Radion(angle: 50), angle2Radion(angle: -50)]animati.repeatCount = MAXFLOATgreenView.layer.add(animati, forKey: nil)",
                         "In 1949 my hometown was liberated. Since then great changes have taken place there. The streets have been widened. Factories, schools, hospitals, cinemas and theatres have sprung up one after another. The life of the people is greatly improved",
                         "welcome to study",
                         "好好学习，天天向上，😁"]
        
    }
    


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = TestCell.height(text: dataArray[indexPath.row])
        return height
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TestCell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as! TestCell
        cell.textL.text = dataArray[indexPath.row]
        return cell
    }
}










