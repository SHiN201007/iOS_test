
import UIKit
import MondrianLayout
import RecreatingUI

class ViewController: UIViewController {
    
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "UISwitch"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let switchButton = SwitchButtonView()
        let toggle = SwitchButtonToggleView()
//        toggle.delegate = self
        
        // autoLayout
        Mondrian.buildSubviews(on: view) {
            LayoutContainer(attachedSafeAreaEdges: .all) {
                ZStackBlock {
                    VStackBlock {
                        resultLabel
                        
                        ViewBlock(switchButton)
                            .overlay(
                                toggle.viewBlock
                                    .relative(.vertical, 5)
                                    .relative(.trailing, 5)
                            )
                    }
                }
            }
        }
    }
}

/// モジュール間のアクセス権限がわからずできませんでした、
//extension ViewController: SwitchButtonDelegate {
//    func didTapped(_ isToggle: Bool) {
//        resultLabel.text = isToggle ? "ON" : "OFF"
//    }
//}
