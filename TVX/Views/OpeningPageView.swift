//
//  OpeningPageView.swift
//  TVX
//
//  Created by Berk Bozkurt on 2021-11-29.
//

import SwiftUI

struct OpeningPageView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("TVX")
            Text("\"The new television provider\"")
            
            Divider()
                .padding(.vertical ,15)
            Button(action: {print("button was pressed")}, label: {Text("Sign-up")})
                .foregroundColor(.primary)
            Text ("or")
            Button(action: {print("button was pressed")}, label: {Text("Sign-in")})
                .foregroundColor(.primary)
        }
        .navigationTitle("TVX")
    }
}

struct OpeningPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView() {
        OpeningPageView()
        }
    }
}
