//
//  LocalJsonData.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import Foundation

struct LocalJsonData {
    enum FileName: String {
        case player
        case category
        case product
    }
    
    func players() -> [Player] {
        return (try? Bundle.main.decode("\(FileName.player.rawValue).json")) ?? []
    }
    
    func categories() -> [Category] {
        return (try? Bundle.main.decode("\(FileName.category.rawValue).json")) ?? []
    }
    
    func products() -> [Product] {
        return (try? Bundle.main.decode("\(FileName.product.rawValue).json")) ?? []
    }
}
  
