//
//  Task.swift
//  TaskManager
//
//  Created by Roman Riepa on 31.08.2023.
//

import Foundation

struct Task: Identifiable, Hashable {
    
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy milk", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
 
    static func examples() -> [Task] {
        [
            Task(title: "Here's to the crazy ones"),
            Task(title: "the misfits, the rebels, the troublemakers", isCompleted: true),
            Task(title: "the round pegs in the square holes...", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "the ones who see things differently - they're not fond of rules..."),
            Task(title: "You can qoute them, disagree with them, glorify or vilify or viligy them"),
            Task(title: "the push the human race forward", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
            Task(title: "are the ones who do.")
        ]
    }
    
}
