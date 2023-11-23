//
//  Reminder.swift
//  RemindersApp
//
//  Created by Alessia Barone on 22/11/23.
//

import Foundation

struct Reminder: Identifiable {
    let id = UUID()
    var name: String
    var isComplete = false
    
}

extension Reminder {
    static var example: Reminder {
        Reminder(name: "Example reminder")
    }
}

