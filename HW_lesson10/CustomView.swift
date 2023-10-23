//
//  CustomView.swift
//  HW_lesson10
//
//  Created by Le Thanh Son on 23/10/2023.
//

import UIKit
//@IBDesignable



class CustomView: UIView {
    
    
    @IBOutlet weak var rightNavigation: UIImageView!
    @IBOutlet weak var customViewImage: UIImageView!
    @IBOutlet weak var contenLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        let bundle = Bundle(for: type(of: self))
        if let nib = UINib(nibName: "CustomView", bundle: bundle).instantiate(withOwner: self, options: nil).first as? UIView {
            nib.frame = bounds
            nib.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nib)
        }
    }
}
