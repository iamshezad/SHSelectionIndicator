//
//  SHSelectionIcon.swift
//  SHSelectionIndicator
//

import UIKit

public enum SHDirection {
    case horizontal
    case vertical
}

class SHSelectionIcon: UIImageView {
    
    //Mark :- Variables
    private var buttonFrame: CGRect!
    private var lastButtonFrame: CGRect!
    var selectionIconWidth: CGFloat = 30
    var selectionIconHeight: CGFloat = 30
    var pointerDirection: SHDirection = .vertical
    
    //Mark :- Methods
    public func initialButton(object:UIButton) {
        lastButtonFrame = object.frame
        switch pointerDirection {
        case .vertical:
            self.frame = CGRect(x: object.frame.midX-(selectionIconWidth/2), y: object.frame.origin.y + object.frame.height, width: selectionIconWidth, height: selectionIconHeight)
        case .horizontal:
            self.frame = CGRect(x: object.frame.origin.x + object.frame.width, y: object.frame.midY-(selectionIconHeight/2), width: selectionIconWidth, height: selectionIconHeight)
        }
        
        
    }
    public func setSelection(object:UIButton) {
        buttonFrame = object.frame
        setSelctionIconFrame()
    }
    private func setSelctionIconFrame()
    {
        switch pointerDirection {
        case .vertical:
            self.frame = CGRect(x: self.lastButtonFrame.midX-(selectionIconWidth/2), y: lastButtonFrame.origin.y + lastButtonFrame.height, width:selectionIconWidth, height:selectionIconHeight)
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.frame = CGRect(x: self.buttonFrame.midX-(self.selectionIconWidth/2), y: self.buttonFrame.origin.y + self.buttonFrame.height, width: self.selectionIconWidth, height: self.selectionIconHeight)
            }, completion: { (success) in
                self.lastButtonFrame = self.buttonFrame
            })
        case .horizontal:
            self.frame = CGRect(x: lastButtonFrame.origin.x + lastButtonFrame.width, y: lastButtonFrame.midY-(selectionIconHeight/2), width: selectionIconWidth, height: selectionIconHeight)
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.frame = CGRect(x: self.buttonFrame.origin.x + self.buttonFrame.width, y: self.buttonFrame.midY-(self.selectionIconHeight/2), width: self.selectionIconWidth, height: self.selectionIconHeight)
            }, completion: { (success) in
                self.lastButtonFrame = self.buttonFrame
            })
        }
        
    }
    
    
}
