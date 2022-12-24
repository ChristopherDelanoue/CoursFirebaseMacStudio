//
//  LoginView.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 11/12/2022.
//

import SwiftUI

struct LoginView: View {
    @StateObject var authVM: AuthViewModel
    @State var selection = 0
    
    @State var email: String = ""
    @State var mdp: String = ""
    @State var prenom: String = ""
    @State var nom: String = ""
    
    
    var body: some View {
        NavigationView() {
            ScrollView {
                VStack(spacing: 30) {
                    Picker("selectionnez votre mode de connection", selection: $selection) {
                        Text("Connection").tag(0)
                        Text("Inscription").tag(1)
                    }.pickerStyle(.segmented).padding()
                    
                    if selection == 1 {
                        TextFieldView(placeHolder: "Prénom", reponse: $prenom)
                        TextFieldView(placeHolder: "Nom", reponse: $nom)
                    }
                    TextFieldView(placeHolder: "E-mail", reponse: $email)
                    SecureFieldViewFieldView(placeHolder: "Mot de passe", reponse: $mdp)
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            Circle()
                                .frame(width: 61)
                                .foregroundColor(.blue)
                            Circle()
                                .frame(width: 58)
                                .foregroundColor(.white)
                            Image(systemName: "checkmark")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.orange.opacity(0.7))
                        }
                        
                    }
                }.padding().animation(.easeInOut, value: selection)
                


            }.background(Color.orange.gradient.opacity(0.5)).navigationTitle("My Chat App")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(authVM: AuthViewModel())
    }
}
