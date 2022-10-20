//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/20.
//

import SwiftUI

struct CategoryGridView: View {
    
    let categories: [Category]
    
    private let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    private let columnSpacing: CGFloat = 10
    private let rowSpacing: CGFloat = 10
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(title: "category", rotateClockwise: false)
                } footer: {
                    SectionView(title: "category", rotateClockwise: true)
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: LocalJsonData().categories())
            .background(Style.Colors.background.value)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
