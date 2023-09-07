//
//  TaskListView.swift
//  TaskManager
//
//  Created by Roman Riepa on 02.09.2023.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    @State private var selectedTask: Task? = nil
    
    @State private var inspectorIsShown: Bool = false
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            ToolbarItemGroup {
                Button {
                    tasks.append(Task(title: "New Task"))
                } label: {
                    Label("Add New Task", systemImage: "plus")
                }
                
                Button {
                    inspectorIsShown.toggle()
                } label: {
                    Label("Show inspector", systemImage: "sidebar.right")
                }
            }
        }
        if #available(macOS 14.0, *) {
            inspector(isPresented: $inspectorIsShown) {
                Group {
                    if let selectedTask {
                        Text(selectedTask.title).font(.title)
                    } else {
                        Text("nothing selected")
                    }
                }
                .frame(minWidth: 100, maxWidth: .infinity)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
