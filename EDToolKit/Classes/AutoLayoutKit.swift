//
//  AutoLayoutKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 11..
//
//

import Foundation
import UIKit

open class AutoLayoutKit {
    
    open static let shared = AutoLayoutKit()
    
    //MARK: init
    public init() {
        
    }
    
    //MARK: AutoLayout Tool
    open func EqualWidth(_ TargetView : AnyObject, Width : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: Width))
    }
    
    open func EqualHeight(_ TargetView : AnyObject, Height : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: Height))
    }
    
    open func CenterX(_ TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0))
    }
    
    open func CenterY(_ TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0))
    }

    open func Leading(_ TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: LeadingSize))
    }
    
    open func Trailing(_ TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: MainView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: TargetView, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: TrailingSize))
    }
    
    open func Top(_ TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: TopSize))
    }
    
    open func Bottom(_ TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: BottomSize))
    }
    
    open func setAspectRation(_ ratioWidth: CGFloat, ratioHeight: CGFloat, TargetView: AnyObject) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth/ratioHeight, constant: 0))
    }
    
    open func setViewTerm(_ term: CGFloat, topView: AnyObject, bottomView: AnyObject, mainView: AnyObject) {
        mainView.addConstraint(NSLayoutConstraint(item: topView, attribute: .bottom, relatedBy: .equal, toItem: bottomView, attribute: .top, multiplier: 1.0, constant: -term))
    }
    
    open func setViewTerm(_ term: CGFloat, leftView: AnyObject, rightView: AnyObject, mainView: AnyObject) {
        mainView.addConstraint(NSLayoutConstraint(item: leftView, attribute: .right, relatedBy: .equal, toItem: rightView, attribute: .left, multiplier: 1.0, constant: -term))
    }
    
    //MARK: set AutoLayout
    open func setAutoLayout(_ Leading: CGFloat?, Trailing: CGFloat?, Top: CGFloat?, Bottom: CGFloat?, Width: CGFloat?, Height: CGFloat?, TargetView: AnyObject, MainView: AnyObject){
        // Leading
        if Leading != nil {
            self.Leading(TargetView, MainView: MainView, LeadingSize: Leading!)
        }
        
        //Trailing
        if Trailing != nil {
            self.Trailing(TargetView, MainView: MainView, TrailingSize: Trailing!)
        }
        
        //Top
        if Top != nil {
            self.Top(TargetView, MainView: MainView, TopSize: Top!)
        }
        
        //Bottom
        if Bottom != nil {
            self.Bottom(TargetView, MainView: MainView, BottomSize: -Bottom!)
        }
        
        //Width
        if Width != nil {
            self.EqualWidth(TargetView, Width: Width!)
        }
        
        //Height
        if Height != nil {
            self.EqualHeight(TargetView, Height: Height!)
        }
    }
    
    open func setCenterLayout(_ X: Bool, Y: Bool, TargetView: AnyObject, MainView: AnyObject) {
        // X
        if X == true {
            self.CenterX(TargetView, MainView: MainView)
        }
        
        // Y
        if Y == true {
            self.CenterY(TargetView, MainView: MainView)
        }
    }
    
    open func setEqualWidthAndHeight(_ width: CGFloat, height: CGFloat, targetView: AnyObject) {
        self.EqualWidth(targetView, Width: width)
        self.EqualHeight(targetView, Height: height)
    }
    
    //MARK: return Constraint
    open func return_EqualWidth(_ TargetView : AnyObject, Width : CGFloat) -> NSLayoutConstraint {
        let EqualWidth : NSLayoutConstraint = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: Width)
        return EqualWidth
    }
    
    open func return_EqualHeight(_ TargetView : AnyObject, Height : CGFloat) -> NSLayoutConstraint {
        let EqualHeight                     = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: Height)
        return EqualHeight
    }
    
    open func return_CenterX(_ TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerX                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
        return centerX
    }
    
    open func return_CenterY(_ TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerY                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0)
        return centerY
    }
    
    open func return_Leading(_ TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) -> NSLayoutConstraint {
        let Leading                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: LeadingSize)
        return Leading
    }
    
    open func return_Trailing(_ TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) -> NSLayoutConstraint {
        let Trailing                        = NSLayoutConstraint(item: MainView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: TargetView, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: TrailingSize)
        return Trailing
    }
    
    open func return_Top(_ TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) -> NSLayoutConstraint {
        let top                             = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: TopSize)
        return top
    }
    
    open func return_Bottom(_ TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) -> NSLayoutConstraint {
        let bottom                          = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: MainView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: BottomSize)
        return bottom
    }
    
    // TODO: Ratio 추가.
    open func setRatio(_ TargetView: AnyObject, ratioWidth: CGFloat, ratioHeigth: CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth / ratioHeigth, constant: 1.0))
    }
    
    open func return_Ratio(_ TargetView: AnyObject, ratioWidth: CGFloat, ratioHeight: CGFloat) -> NSLayoutConstraint {
        let ratio = NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth / ratioHeight, constant: 1.0)
        return ratio
    }
}
