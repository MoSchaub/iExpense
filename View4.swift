//
//  View4.swift
//  iExpense
//
//  Created by Moritz Schaub on 22.01.20.
//  Copyright © 2020 Moritz Schaub. All rights reserved.
//

import SwiftUI

struct View4: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("TapCount: \(tapCount)"){
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}

struct View4_Previews: PreviewProvider {
    static var previews: some View {
        View4()
    }
}
