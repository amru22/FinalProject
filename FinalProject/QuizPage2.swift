//
//  QuizPage2.swift
//  FinalProject
//
//  Created by Scholar on 31/07/2024.
//

import SwiftUI

struct QuizPage2: View {
    @AppStorage("score") var score: Int = 0
    
    var body: some View {
       
        
        
        ZStack {
           
            
            LinearGradient(gradient: Gradient(colors: [Color.green,  Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
.ignoresSafeArea()
            
            VStack  {
                
                    
                   
                    
               
                
                Text("Do you compost organic waste?")
                    .font(.title3)
                    .fontWeight(.medium)
                    .background(Rectangle()
                        .cornerRadius(15)
                        .frame(width: 360.0, height: 40.0)
                        .foregroundColor(.white))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 15)
                    .padding()
                
                
                HStack {Button{
                    self.score += 1
                    print(score)
                } label: {
                    Text("Yes")
                        .font(.title3)
                        .fontWeight(.medium)
                        .background(Rectangle()
                            .cornerRadius(15)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green))
                        .foregroundColor(Color.black)
                        .shadow(radius: 15)
                        .padding()
                }
                    
                    Button{
                        self.score += -1
                        print(score)
                    } label: {
                        Text("No")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(.red))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                        
                    }
                   
                    
                }
                
                
                Text("Do you prefere washing dishes by hand? ")
                    .font(.title3)
                    .fontWeight(.medium)
                    .background(Rectangle()
                        .cornerRadius(15)
                        .frame(width: 360.0, height: 60.0)
                        .foregroundColor(.white))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 15)
                    .padding()
                
                HStack {
                    Button{
                        self.score += -1
                        print(score)
                    } label: {
                        Text("Yes")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.green))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                    Button{
                        self.score += 1
                        print(score)
                    } label: {
                        Text("No")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(.red))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                    
                   
                    
                }
                
                Text("Do you make sure to turn off all appliances, lights, heating/ AC before heaving?")
                    .font(.title3)
                    .fontWeight(.medium)
                    .background(Rectangle()
                        .cornerRadius(15)
                        .frame(width: 360.0, height: 90.0)
                        .foregroundColor(.white))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 15)
                    .padding()
                
                
                
               
                
                HStack {
                    Button{
                        self.score += 1
                        print(score)
                    } label: {
                        Text("Yes")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.green))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                    
                    Button{
                        self.score += -1
                        print(score)
                    } label: {
                        Text("No")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(.red))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                   
                    
                   
                    
                }
                
                Text("Do you carry a reusable water bottle instead of buying bottles water?")
                    .font(.title3)
                    .fontWeight(.medium)
                    .background(Rectangle()
                        .cornerRadius(15)
                        .frame(width: 360.0, height: 60.0)
                        .foregroundColor(.white))
                    .multilineTextAlignment(.center)
                    .shadow(radius: 15)
                    .padding()
                
                HStack {
                    Button{
                        self.score += 1
                        print(score)
                    } label: {
                        Text("Yes")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.green))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                    
                    Button{
                        self.score += -1
                        print(score)
                    } label: {
                        Text("No")
                            .font(.title3)
                            .fontWeight(.medium)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(.red))
                            .foregroundColor(Color.black)
                            .shadow(radius: 15)
                            .padding()
                    }
                   
                    
                   
                    
                }
                
            } //end of vstack
                                } //end of zstack
       
  


    }
}

//#Preview {
    //QuizPage2View()
//    page2(score: $score)
//}
