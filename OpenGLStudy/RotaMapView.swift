//
//  RotaMapView.swift
//  OpenGLStudy
//
//  Created by KKING on 2017/12/19.
//  Copyright © 2017年 KKING. All rights reserved.
//

import UIKit

class RotaMapView: UIView {
    
    var dataArr = Array<Array<Int>>()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .cyan
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        for i in 0..<dataArr.count {
            for j in 0..<dataArr[i].count {
                if dataArr[i][j] > 0 {
                    CGContext.addRect(context!)(CGRect(x: j, y: i, width: 1, height: 1))
                }
            }
        }
        CGContext.strokePath(context!)()
    }
}
