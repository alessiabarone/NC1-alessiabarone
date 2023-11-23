//
//  ReminderList.swift
//  RemindersApp
//
//  Created by Alessia Barone on 22/11/23.
//

import Foundation
import SwiftUI

struct ReminderList: Identifiable {
    let id = UUID()
    var name: String
    var reminders = [Reminder]()
    var color = Color.blue
    var iconName = "list.bullet"
}

extension ReminderList {
    static var example: ReminderList {
        ReminderList(name: "Example list", reminders: [Reminder.example])
    }
    
    static var exampleLists: [ReminderList] {
        var out = [ReminderList]()
        out.append(ReminderList(name: "Reminders", reminders: [Reminder(name: "Walk dog"), Reminder(name: "Take out trash")]))
        out.append(ReminderList(name: "Christmas Present", reminders: [Reminder(name: "think about the gift for grandma"), Reminder(name: "Buy present to friends")], color: .red, iconName: "snow"))
        out.append(ReminderList(name: "Urgent", reminders: [Reminder(name: "Apply to Secret Santa")], color: .purple, iconName: "exclamationmark.3"))
        return out
    }
    
    static var exampleToday: ReminderList {
        ReminderList(name: "Today", reminders: [Reminder(name:"Walk the dog")], color: .blue, iconName: "sun.max.fill")
    }
    
    static var exampleScheduled: ReminderList {
        ReminderList(name: "Scheduled", reminders: [Reminder(name:"Lunch with the girls")], color: .pink, iconName: "calendar")
    }
    
    static var exampleFlagged: ReminderList {
        ReminderList(name: "Flagged", reminders: [], color: .yellow, iconName: "flag.fill")
    }
    
}
