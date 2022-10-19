//
//  Style.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI

struct Style {
    
    // MARK: - Colors
    enum Colors: Equatable {
        case background
        case gray
         
        var value: Color {
            switch self {
            case .background:
                return Color("ColorBackground")
            case .gray:
                return Color(uiColor: UIColor.systemGray4)
            }
        }
    }
}
