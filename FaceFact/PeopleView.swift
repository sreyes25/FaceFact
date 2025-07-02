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
        List{
            ForEach(people) { person in
                NavigationLink(value: person){
                    Text(person.name)
                }
            }
            .onDelete(perform: deletePerson)
        }
    }
    
    init(searchString: String = "") {
        _people = Query(filter: #Predicate { person in
            if searchString.isEmpty {
                true
            } else{
                person.name.localizedStandardContains(searchString)
            }
        })
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
