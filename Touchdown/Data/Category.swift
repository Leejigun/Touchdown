//
//  Category.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/20.
//

import Foundation

struct Category: Codable, Equatable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
