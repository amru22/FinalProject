//
// fridgePage.swift
// FinalProject
//
// Created by Scholar on 30/07/2024.
//
import SwiftUI
import SwiftData
struct fridgePage: View {
  @State private var addItem = false
  @Query var foods: [coreDataForFridge]
  @Environment(\.modelContext) var modelContext
  //@State private var showNewItem = false
  var body: some View {
    VStack {
      Text("The Fridge")
        .font(.system(size: 40))
        .fontWeight(.black)
        .multilineTextAlignment(.center)
        .padding()
      Spacer()
      Button {
        withAnimation {
          self.addItem = true
        }
      } label: {
        Text("Add a new item")
          .font(.largeTitle)
          .fontWeight(.bold)
      }
      Spacer()
      List {
        ForEach(foods){coreDataForFridge in
          Text(coreDataForFridge.name)
          Text(coreDataForFridge.expirationDate)
        }.onDelete(perform: deleteFoodItem)
      }
    }//vstack
    .padding()
    if addItem{
      addItemToFridge(coreDataForFridge: coreDataForFridge(name: "", expirationDate: ""), addItem: $addItem)
    }
  }
  func deleteFoodItem(at offsets: IndexSet){
    for offset in offsets{
      let coreDataInFridge = foods[offset]
      modelContext.delete(coreDataInFridge)
    }
  }
}
#Preview {
  fridgePage()
}
