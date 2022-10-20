//
//  HomeState.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import ComposableArchitecture

// MARK: - State
struct HomeState: Equatable {
    var players: [Player] = []
    var categories: [Category] = []
}

// MARK: - Action
enum HomeAction: Equatable {
    case onAppear
}

// MARK: - Environment
struct HomeEnvironment {
    let localJsonData: LocalJsonData
    
    init(localJsonData: LocalJsonData = LocalJsonData()) {
        self.localJsonData = localJsonData
    }
}

// MARK: - Reducer
let HomeReducer = Reducer<HomeState, HomeAction, HomeEnvironment> { state, action, environment in
    switch action {
    case .onAppear:
        state.players = environment.localJsonData.players()
        state.categories = environment.localJsonData.categories()
        return Effect.none
    }
}
