//
//  MakeLabelKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 23..
//
//

import Foundation
import UIKit

public class MakeUILabelKit {

    public typealias CompletionHandler = () -> Void
    open static let COLOR_BASIC = UIColor.black
    fileprivate var isAction: Void = Void()
    
    private var isActionTest: CompletionHandler!
    
    public init() {
    
    }
    
    // MARK: make UILabel
    public func makeLabel(_ text: String, size: CGRect, addView: AnyObject) -> UILabel {
        let mainLabel = UILabel(frame: size)
        
        labelBasicWork(mainLabel)
        mainLabel.text = text
        mainLabel.textColor = UIColor.black
        mainLabel.font = UIFont(name: "Helvetica", size: 14.0)
        
        addView.addSubview(mainLabel)
        return mainLabel
    }
    
    public func textDecoration(_ label: UILabel, fontSize: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if fontSize != nil && fontName != nil {
            label.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                label.font = UIFont(name: "Helvetica", size: fontSize!)
            } else if fontName != nil {
                label.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            label.textColor = color!
        }
        
        if alignment != nil {
            label.textAlignment = alignment!
        }
    }
    
    public func contentDecoration(label: UILabel, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            label.layer.borderColor = layerColor!.cgColor
            label.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                label.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                label.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            label.backgroundColor = bgColor!
        }
        
        if corner != nil {
            label.layer.cornerRadius = corner!
        }
    }
    
    public func addTouchAction(_ label: UILabel, isVoid: @escaping CompletionHandler, isAction: Selector) {
        let isGesture = UITapGestureRecognizer(target: label, action: isAction)
        label.addGestureRecognizer(isGesture)
    }
    
    // MARK: Make tool
    func labelBasicWork(_ label: UILabel) {
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
    }

}
