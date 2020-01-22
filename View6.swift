//
//  View6.swift
//  iExpense
//
//  Created by Moritz Schaub on 22.01.20.
//  Copyright © 2020 Moritz Schaub. All rights reserved.
//

import SwiftUI

struct User: Codable{
    var firstName: String
    var lastName: String
}


struct View6: View {
    
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()

            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct View6_Previews: PreviewProvider {
    static var previews: some View {
        View6()
    }
}
