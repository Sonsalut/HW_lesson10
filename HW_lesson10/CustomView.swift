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
        let bundle = Bundle.init(for: CustomView.self)
        if let viewToAdd = bundle.loadNibNamed("CustomView.xib", owner: self, options: nil),
            let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
