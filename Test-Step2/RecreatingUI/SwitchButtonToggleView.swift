//
//  SwitchButtonToggleView.swift
//  RecreatingUI
//
//  Created by 松丸真 on 2022/03/16.
//

import UIKit
import MondrianLayout

public class SwitchButtonToggleView: UIView {
    
    private var isToggle: Bool = true
    public var delegate: SwitchButtonDelegate?
    
    public init() {
        super.init(frame: .zero)
        backgroundColor = .green
        layer.cornerRadius = 20
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override var intrinsicContentSize: CGSize {
        return .init(width: 50, height: 40)
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.transform = .init(scaleX: 0.6, y: 0.6)
            self.center.x += self.isToggle ? -60 : 60
            self.isToggle.toggle()
        }
        .startAnimation()
        
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.transform = .identity
            self.backgroundColor = self.isToggle ? UIColor.green : UIColor.lightGray
            self.delegate?.didTapped(self.isToggle)
        }
        .startAnimation()
    }
    
}
