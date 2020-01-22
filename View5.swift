//
//  View5.swift
//  iExpense
//
//  Created by Moritz Schaub on 22.01.20.
//  Copyright © 2020 Moritz Schaub. All rights reserved.
//

import SwiftUI

class Person : ObservableObject{
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct View5: View {
    
    @ObservedObject private var user = Person()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First name", text: $user.firstName)
                .padding(.leading)
            TextField("Last name", text: $user.lastName)
                .padding(.leading)
        }
    }
}

struct View5_Previews: PreviewProvider {
    static var previews: some View {
        View5()
    }
}
