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
    }
    
    func players() -> [Player] {
        return (try? Bundle.main.decode("\(FileName.player.rawValue).json")) ?? []
    }
}
  
