//
//  UIImage+Corners.swift
//  QNN
//
//  Created by wdy on 2018/9/3.
//  Copyright © 2018年 qianshengqian. All rights reserved.
//

import UIKit

extension UIImage {

    class func imageWithSolidColor(_ color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }

    func roundedImage(with cornerRadius: CGFloat, cornersToRound: UIRectCorner) -> UIImage {
        let rect = CGRect(origin:CGPoint(x: 0, y: 0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIBezierPath(roundedRect: rect, byRoundingCorners: cornersToRound, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).addClip()
        draw(in: rect)
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
}
