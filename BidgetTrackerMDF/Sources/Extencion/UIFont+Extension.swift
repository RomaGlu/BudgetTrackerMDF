//
//  UIFont+Extencion.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 02/08/2023.
//
import UIKit

enum GTWalsheimProFont: String {
    case bold = "GTWalsheimPro-Bold"
    case regular = "GTWalsheimPro-Regular"
    
}

extension UIFont {
    static func GTWalsheimProFont(weight: GTWalsheimProFont,
      withStyle style: UIFont.TextStyle,
      size fontSize: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: weight.rawValue, size: fontSize) else {
        let descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        return UIFont(descriptor: descriptor, size: descriptor.pointSize)
      }
      return customFont.dynamicallyTyped(withStyle: style)
    }

    func dynamicallyTyped(withStyle style: UIFont.TextStyle) -> UIFont {
      let metrics = UIFontMetrics(forTextStyle: style)
      return metrics.scaledFont(for: self)
    }
}
