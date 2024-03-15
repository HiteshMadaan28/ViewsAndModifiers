//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hitesh Madaan on 15/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var state=false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(.yellow)
        
        Button("Button"){
            //body
//            print(type(of: self.body))
            state.toggle()
        }
        .foregroundColor(state ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/ : .red)
        
        
        
    }
}

#Preview {
    ContentView()
}
