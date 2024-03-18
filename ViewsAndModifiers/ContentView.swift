//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hitesh Madaan on 15/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var state=false
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    let test1=Text("This is out side the body property")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.footnote)
            Text("Hello, world!")
                .font(.largeTitle)
            Text("Hello, world!")
            
            test1
            
            spells
            
            Text("Hello, world!")
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(.yellow)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
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
