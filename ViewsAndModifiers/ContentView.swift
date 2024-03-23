//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hitesh Madaan on 15/03/24.
//

import SwiftUI
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View{
    func titleStyle()-> some View{
        modifier(Title())
    }
    
}

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct WaterMarked: ViewModifier{
    var text:String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.black)
                .padding(5)
                .background(.ultraThinMaterial)
        }
    }
}

extension View{
    
    func waterMark(with text:String)-> some View{
        
        modifier(WaterMarked(text: text))
    }
}

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
                .modifier(Title())
                .font(.footnote)
            Text("Hello, world!")
                .font(.largeTitle)
            Text("Hello, world!").titleStyle()
                
            
            test1
            
            spells
            
            CapsuleText(text: "First")
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(.yellow)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .waterMark(with: "This is Hitesh")
        
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
