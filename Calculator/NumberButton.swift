//
//  NumberButton.swift
//  Calculator
//
//  Created by NguyenDucBien on 12/7/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class NumberButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configButton()
    }
    
    func configButton () -> Void {
        if tag == 102{
            backgroundColor = UIColor.init(red: 155/255, green: 180/255, blue: 220/255, alpha: 1)
        }else{
            backgroundColor = UIColor.init(red: 65/255, green: 85/255, blue: 115/255, alpha: 1)
        }
        
        layer.cornerRadius = 8.0
        titleLabel?.font = UIFont.systemFontOfSize(17)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }

}
