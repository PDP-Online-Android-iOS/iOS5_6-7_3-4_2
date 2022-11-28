//
//  SignInScreen.swift
//  Task 3-4
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var presenter = false
    
    @State var userId = ""
    @State var userPassword = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Image("ogabekdev")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                
                TextField("User ID", text: $userId)
                    .frame(height: 50)
                    .padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                SecureField("User PW", text: $userPassword)
                    .frame(height: 50)
                    .padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                
                Button(action: {
                    
                }, label: {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                })
                .frame(height: 50)
                .background(Color(uiColor: UIColor.systemRed))
                .cornerRadius(25)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.accentColor)
                        .font(.system(size: 18))
                    
                    NavigationLink(destination: SignUpScreen(), label: {
                        Text("Sign Up")
                            .foregroundColor(.accentColor)
                            .bold()
                            .font(.system(size: 18))
                    })
                        
                }
            }
            .padding()
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
