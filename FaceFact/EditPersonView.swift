//
//  EditPersonView.swift
//  FaceFact
//
//  Created by Sergio Reyes on 6/25/25.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    
    var body: some View {
        Form{
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)

                TextField("Email Address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            Section {
                TextField("Details About Person", text:
                            $person.details, axis: .vertical)
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
