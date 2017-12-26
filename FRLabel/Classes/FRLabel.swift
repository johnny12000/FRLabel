//
//  FRLabel.swift
//
//  Created by Nikola Ristic on 11/28/17.
//  Copyright © 2017 nr. All rights reserved.
//

import UIKit

@IBDesignable
open class FRLabel: UILabel {

    /// Size of text indentation from the control edge
    @IBInspectable
    var textIndent: CGSize = CGSize(width: 20, height: 15)

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override open var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + 2 * textIndent.width,
                      height: self.font.pointSize + 2 * textIndent.height)
    }

    override open func drawText(in rect: CGRect) {
        let textInsets = UIEdgeInsets(top: textIndent.height,
                                      left: textIndent.width,
                                      bottom: textIndent.height,
                                      right: textIndent.width)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, textInsets))
    }
}
