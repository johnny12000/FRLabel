//
//  FRLabel.swift
//
//  Created by Nikola Ristic on 11/28/17.
//  Copyright © 2017 nr. All rights reserved.
//

import UIKit

open class FRLabel: UILabel {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var intrinsicContentSize : CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + 2 * 20, height: self.font.pointSize + 2 * 15)
    }
    
    override open func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsets(top: 15, left: 20, bottom: 15, right: 20)))
    }
}
