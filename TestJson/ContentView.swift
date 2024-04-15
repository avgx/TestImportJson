//
//  ContentView.swift
//  TestJson
//
//  Created by Alexey Govorovsky on 15.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    let text: String?
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text ?? "Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView(text: nil)
}
