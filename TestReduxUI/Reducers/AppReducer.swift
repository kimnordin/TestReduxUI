//
//  AppReducer.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

func appReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? initialAppState()
    
    return AppState(numberState: numberReducer(action: action, state: state.numberState))
}
        
func initialAppState() -> AppState {
    return AppState(numberState: initialNumberState())
}
