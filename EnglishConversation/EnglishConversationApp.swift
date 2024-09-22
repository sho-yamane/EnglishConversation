//
//  EnglishConversationApp.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import SwiftUI

@main
struct EnglishConversationApp: App {
    @State private var sharedViewModel = SharedViewModel()

    var body: some Scene {
        WindowGroup(id: "mainWindow") {
            MainWindow()
                .environment(sharedViewModel)
        }
        
        WindowGroup(id: "inputWindow") {
            InputWindow()
                .environment(sharedViewModel)
        }
        .windowStyle(.plain)
        .windowResizability(.contentSize)
        
        WindowGroup(id: "scriptWindow") {
            ScriptWindow()
                .environment(sharedViewModel)
        }
        .defaultSize(width: 500, height: 1000)
        
        WindowGroup(id: "avatarWindow") {
            AvatorWindow()
                .environment(sharedViewModel)
        }
        .defaultSize(width: 2500, height: 2500, depth: 1000)
        .windowStyle(.volumetric)
    }
}
