//
//  KGPressableButton.swift
//  KGPressableButton
//
//  Created by Anantha Krishnan K G on 27/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit

@IBDesignable
public class KGPressableButton: UIButton {

    
    @IBInspectable public var afterDelay: Double = 1.0 {
        didSet {
            if afterDelay > 1.0 {
                afterDelay = 1.0
            }
        }
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    // MARK: Initialization
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func performAction(){
            let beatLong: CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
            beatLong.fromValue = NSValue(cgSize: CGSize(width: 1, height: 1))
            beatLong.toValue = NSValue(cgSize: CGSize(width: 1, height: 1))
            beatLong.autoreverses = true
            beatLong.duration = 0.5
            beatLong.beginTime = 0.0
            
            let beatShort: CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
            beatShort.fromValue = NSValue(cgSize:CGSize(width: 1, height: 1))
            beatShort.toValue = NSValue(cgSize: CGSize(width: 0.5, height: 0.5))
            beatShort.autoreverses = true
            beatShort.duration = 0.5
            beatShort.beginTime = beatLong.duration
            beatLong.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn )
            
            let heartBeatAnim: CAAnimationGroup = CAAnimationGroup()
            heartBeatAnim.animations = [beatLong, beatShort]
            heartBeatAnim.duration = beatShort.beginTime + beatShort.duration
            heartBeatAnim.fillMode = kCAFillModeForwards
            heartBeatAnim.isRemovedOnCompletion = false
            heartBeatAnim.repeatCount = FLT_MAX
            self.layer.add(heartBeatAnim, forKey: "KGPressableButtonAnimation")
           self.perform(#selector(KGPressableButton.stopAnim), with: nil, afterDelay: afterDelay)
    }
    
    func stopAnim(){
        self.layer.removeAnimation(forKey: "KGPressableButtonAnimation")

    }
}
