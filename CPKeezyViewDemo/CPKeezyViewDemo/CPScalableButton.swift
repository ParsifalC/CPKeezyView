//
//  CPScalableButton.swift
//  KeezyButtonDemo
//
//  Created by Parsifal on 2017/1/23.
//  Copyright © 2017年 Parsifal. All rights reserved.
//

import UIKit

open class CPScalableButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        self.addTarget(self, action: #selector(zoomIn), for: [.touchDown])
        self.addTarget(self, action: #selector(zoomOut), for: [.touchUpInside, .touchUpOutside])
    }
    
    func zoomIn() {
        UIView.animate(withDuration: 0.1) {
            self.transform = CGAffineTransform.init(scaleX: 0.8, y: 0.8)
        }
    }
    
    func zoomOut() {
        UIView.animate(withDuration: 0.1) {
            self.transform = CGAffineTransform.identity
        }
    }
}
