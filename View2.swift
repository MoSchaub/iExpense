//
//  View2.swift
//  iExpense
//
//  Created by Moritz Schaub on 22.01.20.
//  Copyright © 2020 Moritz Schaub. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    
    var body: some View {
        Button("Dissmiss View"){
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}


struct View2: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet"){
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView(name: "Mo")
        }
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
