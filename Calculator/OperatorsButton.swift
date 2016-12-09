//
//  OperatorsButton.swift
//  Calculator
//
//  Created by NguyenDucBien on 12/6/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class OperatorsButton: UIButton {
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureButton()
    }
    
    func configureButton () -> Void {
        if tag == 101 {
            backgroundColor = UIColor.init(red: 65/255, green: 115/255, blue: 85/255, alpha: 1)
        }else{
            backgroundColor = UIColor.init(red: 255/255, green: 165/255, blue: 115/255, alpha: 1)
        }
        layer.cornerRadius = 8.0
        
        titleLabel?.font = UIFont.systemFontOfSize(20)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
    }
    
}
