//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI

struct FeatureTabView: View {
    let players: [Player]
    var body: some View {
        TabView {
            if players.isEmpty {
                LogoView()
            } else {
                ForEach(players) { player in
                    FeatureItemView(player: player)
                        .padding(.top, 10)
                        .padding(.horizontal, 15)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView(players: LocalJsonData().players())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Style.Colors.gray.value)
    }
}
