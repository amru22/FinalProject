//
// ContentView.swift
// quizApp
//
// Created by Scholar on 30/07/2024.
//
    import SwiftUI
struct newQuizPage: View {
    @AppStorage("score") var score : Int = 0
  var body: some View {
    NavigationStack {
      ZStack {
      Color(red: 0.714, green: 0.871, blue: 0.517)
          .ignoresSafeArea()
        TabView{
          VStack{
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
          }
          //DESTINATION Q START
          VStack{
            Text("Do you prefere walking to destinations?")
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
          }
          //destination q END
          VStack{
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
          }
          VStack{
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
          }
          VStack{
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
          }
          VStack{
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
          }
          VStack{
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
              
              
                          NavigationLink(destination: homePage()) {
                            Text("Continue")
                              .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 100.0, height: 40.0)
                                .foregroundColor(.white))
                              .multilineTextAlignment(.center)
                              .shadow(radius: 15)
                              .padding()
                      }
          }
        } //end of tabview
        .tabViewStyle(.page)
          
      } //end of zstack
        
        
    }
  }
  }
#Preview {
  newQuizPage()
}



