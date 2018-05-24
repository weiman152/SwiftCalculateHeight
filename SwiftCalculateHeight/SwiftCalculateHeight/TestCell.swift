//
//  TestCell.swift
//  SwiftCalculateHeight
//
//  Created by iOS on 2018/5/24.
//  Copyright © 2018年 weiman. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.size.width

class TestCell: UITableViewCell {
    
    @IBOutlet weak var textL: UILabel!
    
    class func height(text: String) -> CGFloat {
        // 注意这里的宽度计算，要根据自己的约束来计算
        let maxSize = CGSize(width: (screenWidth - 30), height: CGFloat(MAXFLOAT))
        let paraph = NSMutableParagraphStyle()
        let textSize = NSString(string: text).boundingRect(
            with: maxSize,
            options: [.usesFontLeading, .usesLineFragmentOrigin],
            attributes: [.font : UIFont.systemFont(ofSize: 14),
                         .paragraphStyle: paraph],
            context: nil).size
        // 注意，这里的数字也是根据实际情况来的，这里的文字距离上面是10，距离下面也是10，所以加了两个10
        return textSize.height + 10 + 10
    }

}
