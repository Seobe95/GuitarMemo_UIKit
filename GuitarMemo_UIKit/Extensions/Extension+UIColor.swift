//
//  Extension+Color.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/24/24.
//

import UIKit

extension UIColor {
    // MARK: UIColor에 hex코드를 사용할 수 있는 Extension
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        // assert: 특정 조건을 체크하고, 조건이 성립하지 않는경우(false) 메시지를 출력할 수 있음
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}
