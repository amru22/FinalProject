//
// ContentView.swift
// statsNew
//
// Created by Scholar on 31/07/2024.
//
import SwiftUI
struct statsPage: View {
    @AppStorage("score") var score: Int = 0
//  @Binding var waterScore : Int
//  @Binding var foodScore : Int
//  @Binding var quizScore : Int
  @State var waterScore = 13
  @State var foodScore = 4
  @State var quizScore = 1
  @State var overallScore = 0
  @State private var foodColour = ""
  @State private var waterColour = ""
  @State private var bgColour = ""
  @State private var progress : Double = 0.0
  var body: some View {
    NavigationStack {
      ZStack {
        Color(.darkGray)
          .ignoresSafeArea()
        ZStack(alignment: .bottom) {
//       progress bar
        Rectangle()
            .fill(Color.black)
            .frame(width: 50.0, height: 700.0)
            .cornerRadius(12)
        Rectangle()
          .fill(LinearGradient(
             gradient: Gradient(colors: [Color.blue, Color.cyan]),
             startPoint: .bottom,
             endPoint: .top))
          .frame(width: 50, height: CGFloat(progress) * 700)
          .cornerRadius(12)
          .animation(.easeInOut(duration: 2), value: progress)
        }
        .position(CGPoint(x: 50.0, y: 380.0))
        .onAppear {
          overallScore = foodScore + waterScore
          self.progress = Double(overallScore)/20
        }
        VStack {
//         overall score
          Text("Overall score")
            .background(Rectangle()
              .frame(width: 250.0, height: 50)
              .cornerRadius(12)
              .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
            .position(CGPoint(x: 220.0, y: 60.0))
//         food waste link
          NavigationLink (destination: foodWaste()) {
            Text("Wasted food items")
              .foregroundColor(.black)
              .background(Rectangle()
                .frame(width: 250.0, height: 200)
                .cornerRadius(12)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
              .position(CGPoint(x: 220.0, y: 10.0))
          }
          NavigationLink (destination: waterWaste()) {
            Text("Wasted water")
              .foregroundColor(.black)
              .background(Rectangle()
                .frame(width: 250.0, height: 200)
                .cornerRadius(12)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
            .position(CGPoint(x: 220.0, y: 10.0))
          }
        }
//        put onAppear to change colour of boxes accordingly
      }
    }
  }
}
#Preview {
  statsPage()
}












