//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI

struct FeatureItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        FeatureItemView(player: LocalJsonData().players().first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Style.Colors.background.value)
    }
}
