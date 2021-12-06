//
//  SignUpView.swift
//  TVX
//
//  Created by Berk Bozkurt on 2021-12-06.
//

import SwiftUI

struct SignUpView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""

    
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var accentColor: Color = Color.orange
    
    var body: some View {
        VStack{
            Text("Sign Up")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {

            }){
                Text("Sign Up!")
                 .font(.headline)
                 .foregroundColor(.white)
                 .padding()
                 .frame(width: 220, height: 60)
                 .background(accentColor)
                 .cornerRadius(15.0)
            }
            
        }
        .background(
            Image("backgroundtwo")
                .scaledToFill()
                .blur(radius: 3)
        )
        .padding()
       
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
