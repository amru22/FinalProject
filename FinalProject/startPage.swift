//
//  ContentView.swift
//  startPage
//
//  Created by Scholar on 01/08/2024.
//

import SwiftUI

struct startPage: View {
    var body: some View {
      
        NavigationStack {
            ZStack {
                Image("gradient")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Welcome to...")
                        .font(.title)
                        .foregroundColor(Color(red: 0.861, green: 0.871, blue: 0.674))
                    Text("OKO")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    NavigationLink(destination: intoQuiz()) {
                        Text("continue")
                            .foregroundColor(Color(red: 0.394, green: 0.517, blue: 0.357))
                            .padding()
                            .background()
                            .cornerRadius(15)
                            .shadow(radius: 15)

                    }
                    
                    

                }

                
            }
        }

    }
}

#Preview {
    startPage()
}
