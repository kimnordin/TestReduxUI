//
//  AppState.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

struct AppState: StateType {
    let numberState: NumberState
}

extension AppState {
    static func == (lhs: AppState, rhs: AppState) -> Bool {
        lhs.numberState == rhs.numberState
    }
}
