//
//  AuthViewModel.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 11/12/2022.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    var manager = FirebaseManager.shared
    
    @Published var isfinishedConnecting = false
    @Published var isAuth = false
    @Published var showError = false
    
    var errorString: String = ""
    var data : [String: Any] = [:]
    
    var auth : Auth {
        return manager.auth
    }
    
    init() {
        addStateDidChange()
    }
    
    func addStateDidChange() {
        auth.addStateDidChangeListener(listener)
    }
    
    func listener(auth: Auth, user: User?) {
        isfinishedConnecting = true
        isAuth = user != nil
    }
}
