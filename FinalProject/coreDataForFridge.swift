//
// coreDataForFridge.swift
// FinalProject
//
// Created by Scholar on 31/07/2024.
//
import Foundation
import SwiftData
@Model
class coreDataForFridge: Identifiable{
  var id = UUID()
  var name = ""
  var expirationDate = ""
  init(name: String, expirationDate: String) {
    self.name = name
    self.expirationDate = expirationDate
  }
}
