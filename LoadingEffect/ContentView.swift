//
//  ContentView.swift
//  LoadingEffect
//
//  Created by Emmanuelle  Dennemont on 28/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Text("Hello la Team")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
    }
}

#Preview {
    ContentView()
}
