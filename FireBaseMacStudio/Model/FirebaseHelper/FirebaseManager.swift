//
//  FirebaseManager.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 11/12/2022.
//

import Foundation
import Firebase

class FirebaseManager {
    
    static let shared = FirebaseManager()
    
    var auth: Auth

    init() {
        FirebaseApp.configure()
        auth = Auth.auth()
    }
}
