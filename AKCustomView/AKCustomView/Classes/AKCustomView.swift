//
//  AKCustomView.swift
//  AKCustomView
//
//  Created by avanza on 01/09/2026.
//

import Foundation
import UIKit

public class AKCustomView: UIView {
    let tapGesture = UITapGestureRecognizer()
    let longPressGesture = UILongPressGestureRecognizer()
    var allowTapAction = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        //        self.tapGesture.addTarget(self, action: #selector(changeRandomBackgroundColor))
        //        self.addGestureRecognizer(self.tapGesture)
        //        self.longPressGesture.addTarget(self, action: #selector(changeRandomBackgroundColor))
        //        self.addGestureRecognizer(self.longPressGesture)
        
        setAllowTapAction(allowTapAction: allowTapAction)
    }
    
    /// alows tap gesture
    public func setAllowTapAction(allowTapAction: Bool){
        self.allowTapAction = allowTapAction
        if allowTapAction{
            self.tapGesture.addTarget(self, action: #selector(changeRandomBackgroundColor))
        }else{
            self.tapGesture.removeTarget(self, action: #selector(changeRandomBackgroundColor))
        }
        self.addGestureRecognizer(self.tapGesture)
    }
    
    /// changes color upon tap or long press gesture
    @objc func changeRandomBackgroundColor(){
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        self.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

extension CGFloat {
    func rounded(toPlaces places: Int) -> CGFloat {
        let divisor = pow(10.0, CGFloat(places))
        return (self * divisor).rounded() / divisor
    }
}

