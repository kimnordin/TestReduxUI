//
//  AppReducer.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

func appReducer(state: AppState?, action: Action) -> AppState {
    var state = state ?? initialAppState()
    
    return AppState(numberState: numberReducer(state: state.numberState, action: action))
}
        
func initialAppState() -> AppState {
    return AppState(numberState: initialNumberState())
}
