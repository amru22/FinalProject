
//
//  ContentView.swift
//  quizApp
//
//  Created by Scholar on 30/07/2024.
//


        import SwiftUI

        struct QuizPage: View {
            
            @AppStorage("score") var score: Int = 0
            
            var body: some View {
             
                NavigationStack {
                    
                   
                    ZStack {
                        
                                                LinearGradient(gradient: Gradient(colors: [Color.green,  Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                            .ignoresSafeArea()
                        
                        VStack  {
                            
                            
                            Text("QUIZ")
                                .font(.title3)
                                .fontWeight(.medium)
                            
                                .background(Rectangle()
                                    .cornerRadius(15)
                                    .border(Color.black, width: 5)
                                    .frame(width: 150.0, height: 60.0)
                                    .foregroundColor(.white))
                                .shadow(radius: 15)
                                .padding()
                            
                            Text("Think hard, and press each button ONCE")
                                .font(.footnote)
                                .fontWeight(.medium)
                                .foregroundColor(Color.red)
                                .background(Rectangle()
                                    .cornerRadius(15)
                                    .frame(width: 280.0, height: 20.0)
                                    .foregroundColor(.white))
                                .multilineTextAlignment(.center)
                                .shadow(radius: 15)
                                .padding()
                            
                            
                            
                            Text("Do you prefer walking to destinations?")
                                .font(.title3)
                                .fontWeight(.medium)
                                .background(Rectangle()
                                    .cornerRadius(15)
                                    .frame(width: 360.0, height: 50.0)
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
                            
                            
                            Text("Do you find yourself throwing away expired food monthly?")
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
                            
                            
                            Text("Do you avoid single-use plastic bags and use reusable bags instead? ")
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
                            
                            Text("Do you recycle your household waste regularly")
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
                            
                            NavigationLink(destination: QuizPage2()) {
                                Text("Next")
                                    .background(Rectangle()
                                        .cornerRadius(15)
                                        .frame(width: 60.0, height: 40.0)
                                        .foregroundColor(.white))
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: 15)
                                    .padding()
                                
                                
                            }
                            }
                            
                        } //end of vstack
                        
                    } //end of zstack
                }
         
            
            }
        

        #Preview {
            QuizPage()
        }

   
