//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Roman Riepa on 31.08.2023.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("Add new Task") {
                    
                }
                .keyboardShortcut(KeyboardShortcut("r", modifiers: .command))
            }
            CommandGroup(after: .newItem) {
                Button("Add new Group") {
                    
                }
            }
        }
    }
}
