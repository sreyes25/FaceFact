//
//  ContentView.swift
//  FaceFact
//
//  Created by Sergio Reyes on 6/25/25.
//
import SwiftData
import SwiftUI

struct ContentView: View {
                
    @State private var path = [Person]()
    @State private var serachText: String = ""
    
    
    var body: some View {
        NavigationStack(path: $path){
            List{
                ForEach(people) { person in
                    NavigationLink(value: person){
                        Text(person.name)
                    }
                }
                .onDelete(perform: deletePerson)
            }
            .navigationTitle("Face Facts")
            .navigationDestination(for: Person.self) { person in
                EditPersonView(person: person)
            }
            .toolbar {
                Button("Add Person", systemImage: "plus", action: addPerson)
            }
            .searchable(text: $serachText)
            
        }
    }
        
    func addPerson() {
        let person = Person(name: "", emailAddress: "",
                details: "")
        modelContext.insert(person)
        path.append(person)
    }
    
}


#Preview {
    ContentView()
}
