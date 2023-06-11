//
//  JSRippleEffect.swift
//  JSRippleEffect
//
//  Created by Eficensuser on 11/06/23.
//

import UIKit
public class JSRippleEffect {
    
   public static func addRippleEffect(to referenceView: UIView, numberOfCircles: Int) {
        let circleSize = referenceView.bounds.size
        for index in 0..<numberOfCircles {
            let circlePath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: circleSize.width, height: circleSize.height))
            let circleShape = CAShapeLayer()
            let shapePosition = CGPoint(x: referenceView.bounds.size.width / 2.0, y: referenceView.bounds.size.height / 2.0)
            circleShape.bounds = CGRect(x: 0, y: 0, width: circleSize.width, height: circleSize.height)
            circleShape.path = circlePath.cgPath
            circleShape.fillColor = UIColor(white: 1, alpha: 0.2).cgColor
            circleShape.strokeColor = UIColor.white.cgColor
            circleShape.lineWidth = 1
            circleShape.position = shapePosition
            circleShape.opacity = 0
            referenceView.layer.addSublayer(circleShape)
            let delay = CFTimeInterval(index) * 0.90
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                let scaleAnim = CABasicAnimation(keyPath: "transform.scale")
                scaleAnim.fromValue = NSValue(caTransform3D: CATransform3DIdentity)
                scaleAnim.toValue = NSValue(caTransform3D: CATransform3DMakeScale(2, 2, 1))
                let opacityAnim = CABasicAnimation(keyPath: "opacity")
                opacityAnim.fromValue = 1
                opacityAnim.toValue = nil
                let animation = CAAnimationGroup()
                animation.animations = [scaleAnim, opacityAnim]
                animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
                animation.duration = CFTimeInterval(5)
                animation.repeatCount = 0
                animation.isRemovedOnCompletion = true
                circleShape.add(animation, forKey: "rippleEffect")
            }
        }
    }
}
