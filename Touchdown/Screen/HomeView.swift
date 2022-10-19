//
//  HomeView.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    
    let store: Store<HomeState, HomeAction>
    
    private func getSafeAreaInsets() -> UIEdgeInsets? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let window = windowScenes?.windows.first
        return window?.safeAreaInsets
    }
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            GeometryReader { geometryProxy in
                ZStack {
                    VStack(spacing: 0) {
                        NavigationBar()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, getSafeAreaInsets()?.top ?? 0)
                            .background(Color.white)
                            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            VStack(spacing: 0) {
                                FeatureTabView(players: viewStore.players)
                                    .frame(width: geometryProxy.size.width, height: geometryProxy.size.width * 0.625)
                                
                                Spacer()
                                FooterView()
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .background(Style.Colors.background.value.ignoresSafeArea())
                }
                .ignoresSafeArea(.all, edges: .top)
                .onAppear {
                    viewStore.send(.onAppear)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static  let store = Store<HomeState, HomeAction>(initialState: HomeState(), reducer: HomeReducer, environment: HomeEnvironment())
    static var previews: some View {
        HomeView(store: Self.store)
    }
}
