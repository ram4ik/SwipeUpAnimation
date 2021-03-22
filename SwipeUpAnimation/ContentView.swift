//
//  ContentView.swift
//  SwipeUpAnimation
//
//  Created by Ramill Ibragimov on 22.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var c1 = true
    @State private var c2 = true
    @State private var c3 = true
    @State private var t = true
    
    var body: some View {
        VStack {
            Image(systemName: "chevron.compact.up")
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .opacity(c1 ? 1 : 0)
            Image(systemName: "chevron.compact.up")
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .opacity(c2 ? 1 : 0)
            Image(systemName: "chevron.compact.up")
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .opacity(c3 ? 1 : 0)
            Text("Swipe Up")
                .foregroundColor(.secondary)
                .bold()
                .padding(2)
                .opacity(t ? 1 : 0)
        }.onAppear() {doAnimation()}
    }
    
    private func doAnimation() {
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).delay(0.1)) {t.toggle()}
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).delay(0.4)) {c1.toggle()}
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).delay(0.3)) {c2.toggle()}
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).delay(0.2)) {c3.toggle()}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
