//
//  ContentView.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 02/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var authVM : AuthViewModel
    
    var body: some View {
        if authVM.isfinishedConnecting {
            if authVM.isAuth {
                Text("Nous sommes Auth")
            }else{
                Text("Nous ne sommes pas Auth")
            }
        } else {
            Text("En attente de connection")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authVM: AuthViewModel())
    }
}
