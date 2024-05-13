//
//  NumberReducer.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

func numberReducer(state: NumberState?, action: Action) -> NumberState {
    var state = state ?? initialNumberState()

    switch action {
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
