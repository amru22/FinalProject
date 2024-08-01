//
// waterPage.swift
// FinalProject
//
// Created by Scholar on 30/07/2024.
//
import SwiftUI
struct waterPage: View {
    @AppStorage("score") var score: Int = 0
    
  @State private var numOfPeople : String = ""
  @State private var numOfWashingCycles : String = ""
  @State private var numOfDishwasherCycles : String = ""
//  @State private var score : Int = 0
  @State private var water: Double = 0.0
  @State private var timer: Timer?
  @State private var elapsedTime: Int = 0
  @State private var isRunning: Bool = false
  var body: some View {
      ZStack{
          Color(.back)
              .ignoresSafeArea()
              .padding(-100)
          VStack {
              Text("Water")
              
                  .font(.system(size: 50))
                  .fontWeight(.semibold)
                  .foregroundColor(Color.black)
                  .padding(.all, 16.622)
                  .background(Rectangle()
                    .padding(0.13)
                     .foregroundColor(Color.box))
                  .cornerRadius(40)
                  .shadow(radius: 5)
              Text("")
              Text("")
              Text("")
              Text("")
              Text("")
              Text("")
              TextField("Number of people living in your home:", text: $numOfPeople)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .padding(.horizontal, 22.318)
              TextField("Number of washing machine cycles:", text: $numOfWashingCycles)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .padding(.horizontal, 22.318)
              TextField("Number of dishwasher cycles:", text: $numOfDishwasherCycles)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .padding(.horizontal, 22.318)
              Text(formatTime(elapsedTime))
                  .font(.largeTitle)
                  .padding()
              HStack(spacing: 20) {
                  Button(action: startTimer) {
                      Text("Start")
                          .font(.title)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  .disabled(isRunning)
                  Button(action: stopTimer) {
                      Text("Stop")
                          .font(.title)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  .disabled(!isRunning)
                  Button(action: resetTimer) {
                      Text("Reset")
                          .font(.title)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  .disabled(isRunning && elapsedTime == 0)
              }
              Text("Score: \(score)")
              Button(action: {
                  self.updateScore()
              }) {
                  Text("Calculate Score")
                      .font(.title)
                      .padding()
                      .background(Color.blue)
                      .foregroundColor(.white)
                      .cornerRadius(10)
              }
              Text("You have used approximately \(water, specifier: "%.2f") litres of water")
                  .font(.body)
                  .fontWeight(.regular)
                  .multilineTextAlignment(.center)
              Button(action: {
                  self.calculateWaterUsage()
              }) {
                  Text("Calculate Water Usage")
                      .font(.title)
                      .padding()
                      .background(Color.blue)
                      .foregroundColor(.white)
                      .cornerRadius(10)
              }
          }
      }
      .padding()
     
  }
  func startTimer() {
    isRunning = true
    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
      elapsedTime += 1
    }
  }
  func stopTimer() {
    isRunning = false
    timer?.invalidate()
    timer = nil
  }
  func resetTimer() {
    stopTimer()
    elapsedTime = 0
  }
  func formatTime(_ seconds: Int) -> String {
    let minutes = seconds / 60
    let remainingSeconds = seconds % 60
    return String(format: "%02d:%02d", minutes, remainingSeconds)
  }
  func updateScore() {
    score = calculateScoreFromShower(tempElapsedTime: elapsedTime)
    if let newNumOfWashingCycles = Int(numOfWashingCycles),
      let newNumOfPeople = Int(numOfPeople),
      let newNumOfDishwasherCycles = Int(numOfDishwasherCycles) {
      score += calculateScoreFromWashingMachine(tempWashingMachine: newNumOfWashingCycles, people: newNumOfPeople)
      score += calculateScoreFromDishwasher(tempDishWasher: newNumOfDishwasherCycles, people: newNumOfPeople)
    } else {
      print("Error: Invalid input for one of the fields.")
    }
  }
  func calculateScoreFromShower(tempElapsedTime: Int) -> Int {
    let newMinutes = tempElapsedTime / 60
    if newMinutes < 7 {
      return (7 - newMinutes)
    } else if newMinutes > 7 {
      return (newMinutes - 7)
    }
    return 0
  }
  func calculateScoreFromWashingMachine(tempWashingMachine: Int, people: Int) -> Int {
    if tempWashingMachine - people > 6 {
      return  -((tempWashingMachine - people) - 6)
    }
    if tempWashingMachine - people < 6 {
      return  (6 - (tempWashingMachine - people))
    }
    return 0
  }
  func calculateScoreFromDishwasher(tempDishWasher: Int, people: Int) -> Int {
    if tempDishWasher - people > 2 {
      return  -((tempDishWasher - people) - 2)
    }
    if tempDishWasher - people < 2 {
      return (2 - (tempDishWasher - people))
    }
    return 0
  }
  func calculateWaterUsage() {
    if let dishwasherCycles = Double(numOfDishwasherCycles),
      let washingCycles = Double(numOfWashingCycles) {
      let timerMinutes = Double(elapsedTime) / 60
      water = 9.5 * dishwasherCycles + 50 * washingCycles + 13 * timerMinutes
    } else {
      print("Error: Invalid input for one of the fields.")
    }
  }
}
    
struct waterPage_Previews: PreviewProvider {
  static var previews: some View {
    waterPage()
  }
}
