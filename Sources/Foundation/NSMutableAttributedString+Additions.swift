//
//  NSMutableAttributedString+Additions.swift
//  FCExtensionKit
//
//  Created by Fatih Çimen on 21.11.2019.
//  Copyright © 2019 Fatih Çimen. All rights reserved.
//

import Foundation
import UIKit

public extension NSMutableAttributedString {
    
    /// Set color for specific text in attributed string
    ///
    /// - Parameters:
    ///   - text: Text to change color
    ///   - color: Changing color
    @objc func setColor(for text: String, with color: UIColor) {
        let range: NSRange = self.mutableString.range(of: text, options: .caseInsensitive)
        self.addAttribute(.foregroundColor, value: color, range: range)
    }
    
    /// Set font for specific text in attributed string
    ///
    /// - Parameters:
    ///   - text: Text to change font
    ///   - font: Changing font
    ///   - kern: Changing kern
    @objc func setFont(for text: String, with font: UIFont, kern: Double = 0) {
        let range: NSRange = self.mutableString.range(of: text, options: .caseInsensitive)
        self.addAttributes([
                            .font: font,
                            .kern: kern], range: range)
    }
    
    /// Set attributes for specific text in attributed string
    /// - Parameters:
    ///   - text: Text to change attributes
    ///   - attributes: Changing attributes
    @objc func setAttributes(for text: String, attributes: [NSAttributedString.Key: Any]) {
        let range: NSRange = self.mutableString.range(of: text, options: .caseInsensitive)
        self.addAttributes(attributes, range: range)
    }
}
