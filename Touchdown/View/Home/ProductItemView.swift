//
//  ProductItemView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/21.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                .padding(10)
            }
            .background(product.colorValue)
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: LocalJsonData().products().first!)
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(Style.Colors.background.value)
        
    }
}
