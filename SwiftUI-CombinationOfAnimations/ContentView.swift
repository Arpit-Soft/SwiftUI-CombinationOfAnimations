//
//  ContentView.swift
//  SwiftUI-CombinationOfAnimations
//
//  Created by Arpit Dixit on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAnimations = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("🐦")
                .font(.custom("Arial", size: 120))
                .scaleEffect(showAnimations ? 2 : 1)
                .rotationEffect(showAnimations ? .degrees(360) : .zero)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0))
            Spacer()
            Button("Click me") {
                showAnimations.toggle()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
