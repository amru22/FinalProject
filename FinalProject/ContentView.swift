//
//  ContentView.swift
//  FinalProject
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            /*@START_MENU_TOKEN@*/Text("Content")/*@END_MENU_TOKEN@*/
            
            NavigationLink(destination: fridgePage()) {
                Text("Click Me")
            }
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("FINAL PROJECT")
                Text("PUSH")
                //            almaz
                // amalia
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
