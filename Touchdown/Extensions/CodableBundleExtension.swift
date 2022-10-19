//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) throws -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to location \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to location \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decoded \(file) in Data")
        }
        
        return decodedData
    }
}
