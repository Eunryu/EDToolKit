//
//  MakeUIViewKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 14..
//
//

import Foundation
import UIKit

class MakeUIViewKit {
    
    static let shared = MakeUIViewKit()
    public init() {
        
    }
    
    open func makeView(size: CGRect, addView: AnyObject) -> UIView {
        let mainView: UIView = UIView(frame: size)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = UIColor.clear
        addView.addSubview(mainView)
        return mainView
    }
    
    open func contentDecoration(view: UIView, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            view.layer.borderColor = layerColor!.cgColor
            view.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                view.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                view.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            view.backgroundColor = bgColor!
        }
        
        if corner != nil {
            view.layer.cornerRadius = corner!
        }
    }
    
    open func makeBorderView(borderWidth: CGFloat, borderColor: UIColor, addView: AnyObject) -> UIView {
        let borderView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: borderWidth, height : 1))
        borderView.backgroundColor = borderColor
        borderView.translatesAutoresizingMaskIntoConstraints = false
        addView.addSubview(borderView)
        
        return borderView
    }
}