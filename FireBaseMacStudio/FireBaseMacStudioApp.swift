//
//  FireBaseMacStudioApp.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 02/12/2022.
//

import SwiftUI

@main
struct FireBaseMacStudioApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(authVM: AuthViewModel())
        }
    }
}
