//
//  UIColor.swift
//  MultipleProject
//
//  Created by Devank on 25/04/24.
//

import Foundation
import UIKit

extension UIColor {
    static func interpolateColor(from startColor: UIColor, to endColor: UIColor, withFraction fraction: CGFloat) -> UIColor {
        var startRed: CGFloat = 0, startGreen: CGFloat = 0, startBlue: CGFloat = 0, startAlpha: CGFloat = 0
        startColor.getRed(&startRed, green: &startGreen, blue: &startBlue, alpha: &startAlpha)

        var endRed: CGFloat = 0, endGreen: CGFloat = 0, endBlue: CGFloat = 0, endAlpha: CGFloat = 0
        endColor.getRed(&endRed, green: &endGreen, blue: &endBlue, alpha: &endAlpha)

        let interpolatedRed = startRed + (endRed - startRed) * fraction
        let interpolatedGreen = startGreen + (endGreen - startGreen) * fraction
        let interpolatedBlue = startBlue + (endBlue - startBlue) * fraction
        let interpolatedAlpha = startAlpha + (endAlpha - startAlpha) * fraction

        return UIColor(red: interpolatedRed, green: interpolatedGreen, blue: interpolatedBlue, alpha: interpolatedAlpha)
    }
}


