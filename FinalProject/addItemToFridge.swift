//
// addItemToFridge.swift
// FinalProject
//
// Created by Scholar on 31/07/2024.
//
import SwiftUI
import SwiftData
struct addItemToFridge: View {
  @Bindable var coreDataForFridge: coreDataForFridge
  @State private var itemName: String = ""
  @State private var expirationDate: String = ""
  @Binding var addItem: Bool
  @Environment(\.modelContext) var modelContext
  var body: some View {
    VStack {
      Text("New Item:")
        .font(.title)
        .fontWeight(.bold)
      TextField("Enter name of food:", text: $coreDataForFridge.name)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding()
      TextField("Enter Expiration Date as dd/mm/yy:", text: $coreDataForFridge.expirationDate)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding()
      Button {
  addItemToList()
        self.addItem = false
      } label: {
        Text("Save")
          .padding()
          .background(Color.blue)
          .foregroundColor(.white)
          .cornerRadius(10)
      }
      .padding()
    }
    .padding()
  }
  func addItemToList(){
    let foodType = FinalProject.coreDataForFridge(name: coreDataForFridge.name, expirationDate: coreDataForFridge.expirationDate)
    //had to use finalPorject
    modelContext.insert(foodType)
  }
}
#Preview {
  let config = ModelConfiguration(isStoredInMemoryOnly: true)
  let container = try! ModelContainer(for: coreDataForFridge.self, configurations: config)
  let food = coreDataForFridge(name: "Example Food", expirationDate: "25/07/24")
  return addItemToFridge(coreDataForFridge: food, addItem: .constant(true)).modelContainer(container)
}
