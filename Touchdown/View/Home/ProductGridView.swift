//
//  ProductGridView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/21.
//

import SwiftUI

struct ProductGridView: View {
    
    let products: [Product]
    private let gridlayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: gridlayout, spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product)
            }
        }
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: LocalJsonData().products())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
