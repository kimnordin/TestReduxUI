//
//  TestReduxUIApp.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import SwiftUI
import ReduxUI

let store = Store<AppState>(state: initialAppState(), reducer: appReducer)

@main
struct TestReduxUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(store)
        }
    }
}
