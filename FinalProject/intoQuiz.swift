//
//  infoQuiz.swift
//  startPage
//
//  Created by Scholar on 01/08/2024.
//

import SwiftUI

struct intoQuiz: View {
    var body: some View {
      
        ZStack {
            
            Color(red: 0.896, green: 0.906, blue: 0.758)
                .ignoresSafeArea()
            VStack {
                Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                     Text("")
                Text("Welcome to our app! Hopefully it inspires you to become sustainable:) ♻️.Lets begin with a quiz!")
                    
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .background(Rectangle()
                        .cornerRadius(70)
                        .frame(width: 360.0, height: 590.0)
                        .foregroundColor(Color(red: 0.646, green: 0.716, blue: 0.562)))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 5)
                    .padding()
                
                VStack {
                    
               Text("")
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                         Text("")
                         Text("")
                         Text("")
                         Text("")
                         Text("")
                         Text("")
                    Text("")
                    Text("")
                    Text("")
                   
                    NavigationLink(destination: newQuizPage()) {
                        Text("Quiz")
                        
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .background(Rectangle()
                                .cornerRadius(30)
                                .frame(width: 360.0, height: 80.0)
                                .foregroundColor(Color(red: 0.774, green: 0.809, blue: 0.557)))
                            .multilineTextAlignment(.center)
                            .shadow(radius: 5)
                        .padding()
                    }
                }
                
              
                
                
                
            }

        }

          
            
        }
    }


#Preview {
    intoQuiz()
}
