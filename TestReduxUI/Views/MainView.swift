//
//  MainView.swift
//  TestReduxUI
//
//  Created by Kim Nordin on 2024-05-13.
//

import SwiftUI
import ReduxUI

struct MainView: View {
    @EnvironmentObject private var store: Store<AppState>
    @State private var temporaryNumber: Int = 0
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Current Number: \(store.state.numberState.number)")
                .bold()
                .padding()
            Button("Increment Number") {
                store.dispatch(IncrementNumber(add: 1))
            }
            .padding()
            .border(.tertiary)
            Button("Decrease Number") {
                store.dispatch(DecreaseNumber(subtract: 1))
            }
            .padding()
            .border(.tertiary)
            TextField("Set Number", value: $temporaryNumber, formatter: NumberFormatter())
                .padding()
                .border(.tertiary)
                .multilineTextAlignment(.center)
                .onSubmit {
                    store.dispatch(UpdateNumber(number: temporaryNumber))
                }
        }
        .padding()
        .onChange(of: store.state.numberState) {
            temporaryNumber = $0.number
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(store)
    }
}
