//
//  NavigationBar.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI

struct NavigationBar: View {
    
    @State private var isAnimation: Bool = false
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }

            Spacer()
            
            LogoView()
                .opacity(isAnimation ? 1 : 0)
                .offset(x: 0, y: isAnimation ? 0 : -25)
                .onAppear {
                    isAnimation = true
                }
                .animation(.easeOut(duration: 0.5), value: isAnimation)
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }

        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
