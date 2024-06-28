//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Emmanuelle  Dennemont on 01/06/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size: CGFloat = 1.0
    @State private var opacity: Double = 1.0

    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("Recurso 1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 260)
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            let baseAnimation = Animation.easeInOut(duration: 1.0)
                            let repeated = baseAnimation.repeatForever(autoreverses: true)

                            withAnimation(repeated) {
                                self.size = 1.2
                                self.opacity = 0.8
                            }
                        }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
