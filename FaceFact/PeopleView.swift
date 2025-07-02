//
//  PeopleView.swift
//  FaceFact
//
//  Created by Sergio Reyes on 7/2/25.
//
import SwiftData
import SwiftUI


struct PeopleView: View {
    @Environment(\.modelContext) var modelContext
    @Query var people: [Person]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func deletePerson(at offsets: IndexSet) {
        for offset in offsets {
            let person = people[offset]
            modelContext.delete(person)
        }
    }
}

#Preview {
    PeopleView()
}
