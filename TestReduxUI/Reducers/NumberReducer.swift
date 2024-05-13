//
//  NumberReducer.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

func numberReducer(action: Action, state: NumberState?) -> NumberState {
    var state = state ?? initialNumberState()

    switch action {
    case let action as UpdateNumber:
        state.number = action.number
    case is IncrementNumber:
        state.number += 1
    case is DecreaseNumber:
        state.number -= 1
    default: break
    }

    return state
}

func initialNumberState() -> NumberState {
    return NumberState(number: 0)
}
