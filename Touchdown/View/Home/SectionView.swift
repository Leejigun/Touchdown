//
//  SectionView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/20.
//

import SwiftUI

struct SectionView: View {
    
    let title: String
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text(title.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(Style.Colors.gray.value.cornerRadius(12))
        .frame(idealWidth: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(title: "Categories", rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 120))
            .padding()
            .background(Style.Colors.background.value)
    }
}
