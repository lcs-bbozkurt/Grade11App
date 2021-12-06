//
//  SignUpView.swift
//  TVX
//
//  Created by Berk Bozkurt on 2021-11-30.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct SignInView: View {
    @State var UserName: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            WelcomeText()
            UserImage()
            TextField("Username", text:$UserName)
                .padding()
                .background(lightGreyColor)                
                .cornerRadius(10.0)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(10.0)
                .padding(.bottom, 20)
            Button(action: {print("Button tapped")}) {
                           LoginButtonContent()
                        }
        }
        .padding()
        .background(
            Image("backgroundtwo")
                .scaledToFill()
                .blur(radius: 3)
        )
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
struct WelcomeText: View {
    var body: some View {
        Text("Welcome")
            .font(Font.custom("AmericanTypewriter", size: 50))
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("profilephototwo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(Color.orange)
            .cornerRadius(15.0)
    }
}
