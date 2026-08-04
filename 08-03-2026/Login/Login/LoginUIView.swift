//
//  LoginUIView.swift
//  Login
//
//  Created by Muhammad Saad on 8/3/26.
//

import SwiftUI

struct LoginUIView: View {
    
    let validCredentials = Credentials(username: "msaadios95", password: "1234")
    
    @State private var enteredUsername: String = ""
    @State private var enteredPassword: String = ""
    @State private var loginMessage: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Username", text: $enteredUsername)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.never)
            
            SecureField("Password", text: $enteredPassword)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.never)
           
            
            Button("Login") {
                if enteredUsername == validCredentials.username &&
                   enteredPassword == validCredentials.password {
                    loginMessage = "Login successful!"
                } else {
                    loginMessage = "Incorrect username or password."
                }
            }
            
            Text(loginMessage)
        }
        .padding()
    }
    
    
    
}

#Preview {
    LoginUIView()
}
