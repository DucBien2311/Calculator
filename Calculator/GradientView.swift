//
//  GradientView.swift
//  Calculator
//
//  Created by NguyenDucBien on 12/6/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class GradientView: UIView {
    

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        if tag == 110 {
            backgroundColor = UIColor.init(red: 66/255, green: 88/255, blue: 55/255, alpha: 1.0)
        }else{
            creatGradient()
        }
    }
    
    
    func creatGradient() -> Void {
        let bgGradient = CAGradientLayer()
        bgGradient.frame = self.frame
        bgGradient.colors = [UIColor.init(red: 115/255, green: 88/255, blue: 65/255, alpha: 1.0).CGColor, UIColor.init(red: 155/255, green: 215/255, blue: 165/255, alpha: 1.0).CGColor]
        let startPoint = CGPoint.init(x: 0, y: 0)
        let endPoint = CGPoint.init(x: 0.5, y: 0.8)
        bgGradient.startPoint = startPoint
        bgGradient.endPoint = endPoint
        self.layer.insertSublayer(bgGradient, atIndex: 0)
    }
    
}
