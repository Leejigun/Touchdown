//
//  Product.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/21.
//

import Foundation
import SwiftUI

struct Product: Codable, Equatable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    var colorValue: Color { return Color(red: red, green: green, blue: blue) }
    
    var formattedPrice: String { return "$\(price)"}
}
