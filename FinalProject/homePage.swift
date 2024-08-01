//
// ContentView.swift
// swipe
//
// Created by Scholar on 31/07/2024.
//
import SwiftUI
struct homePage: View {
    @AppStorage("score") var score: Int = 0
    @State private var backgroundColour = ""
    
  var body: some View {
//    TabView {
//      HomePage()
//        .tabItem {
//          Label("First", systemImage: "1.circle")
//        }
//
//      TheFridge()
//        .tabItem {
//          Label("Second", systemImage: "2.circle")
//        }
//
//      Energy()
//        .tabItem {
//          Label("Third", systemImage: "3.circle")
//        }
//    }
//    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
//    .indexViewStyle(.page(backgroundDisplayMode: .interactive))
//    .ignoresSafeArea()
    NavigationStack {
      ZStack {
        Color(backgroundColour)
          .ignoresSafeArea()
        Text("OKO")
          .font(.system(size: 40))
          .position(CGPoint(x: 200.0, y: 50.0))
        VStack {
          NavigationLink (destination: fridgePage()){
            Text("The Fridge")
              .font(.system(size: 30))
              .foregroundColor(Color.black)
              .background(Rectangle()
                .frame(width: 150, height: 50)
                .cornerRadius(12)
                .foregroundColor(.blue))
              .padding(.top, 150)
              .padding(.bottom, 50.0)
          }
          NavigationLink (destination: EnergyView()) {
            Text("Energy")
              .font(.system(size: 30))
              .foregroundColor(.black)
              .background(Rectangle()
                .frame(width: 150, height: 50)
                .cornerRadius(12)
                .foregroundColor(.blue))
              .padding(.bottom, 50.0)
          }
          NavigationLink (destination: waterPage()) {
            Text("Water")
              .font(.system(size: 30))
              .foregroundColor(.black)
              .background(Rectangle()
                .frame(width: 150, height: 50)
                .cornerRadius(12)
                .foregroundColor(.blue))
              .padding(.bottom, 50)
          }
          NavigationLink (destination: statsPage()) {
            Text("Stats")
              .font(.system(size: 30))
              .foregroundColor(.black)
              .background(Rectangle()
                .frame(width: 150, height: 50)
                .cornerRadius(12)
                .foregroundColor(.blue))
              .padding(.bottom, 300)
          }
        }
//          Text("Homepage")
//            .font(.system(size: 30))
//            .background(Rectangle()
//              .frame(width: 160, height: 50)
//              .cornerRadius(12)
//              .foregroundColor(/@START_MENU_TOKEN@/.blue/@END_MENU_TOKEN@/))
//            .position(CGPoint(x: 200.0, y: 300.0))
      }
      .onAppear() {
          if score < 5 {
              backgroundColour = "chiliRed"
          } else if score < 10 {
              backgroundColour = "maizeYellow"
          } else if score < 15 {
              backgroundColour = "celBlue"
          } else {
              backgroundColour = "teaGreen"
          }
      }
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    homePage()
  }
}
//@main
//struct SwipeableViewsApp: App {
//  var body: some Scene {
//    WindowGroup {
//      ContentView()
//    }
//  }
//}











