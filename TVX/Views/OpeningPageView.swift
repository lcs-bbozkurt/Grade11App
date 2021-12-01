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
                .font(Font.custom("AmericanTypewriter", size: 50))
                .padding()
//                .background(Image("background.orange").aspectRatio(contentMode: .fit).scaledToFit().blur(radius: 3))

            Text("\"The new television provider\"")
                .italic()
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()
            Divider()
                .padding(.vertical ,30)
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
                .padding()
            Spacer()
                
        }
        .navigationTitle("TVX")
        .navigationBarTitleDisplayMode(.inline)
        .background(
            Image("backgroundtwo")
                .scaledToFill()
                .blur(radius: 3)
        )
    }
}

struct OpeningPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        OpeningPageView()
        }
    }
}
