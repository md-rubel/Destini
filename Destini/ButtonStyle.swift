//
//  ButtonStyle.swift
//  Destini
//
//  Created by MD RUBEL on 4/7/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import UIKit

class ButtonStyle: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     = UIColor(red: 0, green: 37/255, blue: 97/255, alpha: 1)
        titleLabel?.font    = UIFont(name: "HelveticaNeue-Thin", size: 16)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}
