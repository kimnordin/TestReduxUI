//
//  MainView.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import SwiftUI
import ReduxUI

struct MainView: View {
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        VStack {
            Text("Number: \(store.state.numberState.number)")
            Button("Increment Number") {
                store.dispatch(IncrementNumber(add: 1))
            }
            Button("Decrease Number") {
                store.dispatch(DecreaseNumber(subtract: 1))
            }
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(store)
    }
}
