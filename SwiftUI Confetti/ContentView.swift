//
//  ConfettiView.swift
//  SwiftUI Confetti
//
//  Created by Gabriel Sanzone on 15/02/25.
//

import SwiftUI

/// View principal que exibe um botão para ativar a animação de confete.
struct ContentView: View {
    
    /// Estado que controla a animação de confete.
    @State private var isCelebrating = false
    
    var body: some View {
        VStack {
            ZStack {
                // Camada de confetes animados
                ConfettiView(isAnimating: $isCelebrating)
                    .ignoresSafeArea()
                
                // Botão que ativa a animação
                Button(action: {
                    isCelebrating = true
                    // Define um tempo limite para a animação
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                        isCelebrating = false
                    }
                }) {
                    Text("Clique aqui")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
