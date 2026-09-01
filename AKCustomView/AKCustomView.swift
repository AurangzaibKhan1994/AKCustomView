//
//  AKCustomView.swift
//  AKCustomView
//
//  Created by avanza on 01/09/2026.
//

import Foundation
import UIKit

class AKCustomView: UIView {
    let tapGesture = UITapGestureRecognizer()
    var allowTapAction = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.tapGesture.addTarget(self, action: #selector(changeRandomBackgroundColor))
        self.addGestureRecognizer(self.tapGesture)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    /// sets tap gesture
    public func setAllowTapAction(allowTapAction: Bool){
        self.allowTapAction = allowTapAction
    }
    
    @objc func changeRandomBackgroundColor(){
        if allowTapAction{
            let red = CGFloat.random(in: 0...1) // .rounded(toPlaces: 1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            self.backgroundColor = UIColor(cgColor: CGColor(red: red, green: green, blue: blue, alpha: 1.0))
        }
    }
}

extension CGFloat {
    func rounded(toPlaces places: Int) -> CGFloat {
        let divisor = pow(10.0, CGFloat(places))
        return (self * divisor).rounded() / divisor
    }
}

