//
//  NumberActions.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import ReduxUI

struct IncrementNumber: Action {
    let add: Int
}

struct DecreaseNumber: Action {
    let subtract: Int
}
