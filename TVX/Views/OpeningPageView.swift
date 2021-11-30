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
        
            Spacer()
            Text("TVX")
                .fontWeight(.black)
                .foregroundColor(.black)
                .font(.title3)
                .italic()
            
            Text("\"The new television provider\"")
                .italic()
                .fontWeight(.heavy)
                .foregroundColor(.white)
            Divider()
                .padding(.vertical ,15)
            HStack {
            Spacer()
                Button(action: {print("button was pressed")}, label: {Text("Sign-up")})
                .foregroundColor(.primary)
                .buttonStyle(.bordered)
            Text("or")
            Button(action: {print("button was pressed")}, label: {Text("Sign-in")})
                .foregroundColor(.primary)
                .buttonStyle(.bordered)
                Spacer()
            }
            Divider()
                .padding(.vertical ,30)
            Text("TVX is the new era of satelitte providers. TVX helps you choose the best possible streaming subscribtions in a waaay reduced price.")
                .fontWeight(.black)
                .foregroundColor(.white)
            Spacer()
            
        }
    
        .background(Image("background.orange").aspectRatio(contentMode: .fit).scaledToFit().blur(radius: 3))
    }
}

struct OpeningPageView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningPageView()
        
    }
}
