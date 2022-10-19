//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by bimo.ez on 2022/10/19.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(store: .init(initialState: HomeState(), reducer: HomeReducer, environment: HomeEnvironment()))
        }
    }
}
