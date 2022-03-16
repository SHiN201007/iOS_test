
import UIKit

/**
 This is an example custom component.
 You can just remove and start development in another place.
 Or it's fine to continue development from here.
 */
public final class MyButton: UIView {
    
    public init() {
        super.init(frame: .zero)
        
        backgroundColor = .systemBlue
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.transform = .init(scaleX: 0.6, y: 0.6)
        }
        .startAnimation()
        
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.transform = .identity
        }
        .startAnimation()
    }
    
    public override var intrinsicContentSize: CGSize {
        return .init(width: 50, height: 50)
    }
}
