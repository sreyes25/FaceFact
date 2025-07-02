//
//  FaceFactApp.swift
//  FaceFact
//
//  Created by Sergio Reyes on 6/25/25.
//
import SwiftData
import SwiftUI

@main
struct FaceFactApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
