//
//  SwitchButtonView.swift
//  RecreatingUI
//
//  Created by 松丸真 on 2022/03/10.
//

import UIKit
import MondrianLayout

public final class SwitchButtonView: UIView {
    
    public init() {
        super.init(frame: .zero)
        backgroundColor = .systemGray6
        layer.cornerRadius = 20.0
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 0.5
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override var intrinsicContentSize: CGSize {
        return .init(width: 120, height: 40)
    }
    
}
