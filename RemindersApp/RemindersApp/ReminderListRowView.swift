//
//  ReminderListRowView.swift
//  RemindersApp
//
//  Created by Alessia Barone on 22/11/23.
//

import SwiftUI

struct ReminderListListRowView: View {
    let reminderList: ReminderList
    var body: some View {
        HStack {
            listIcon
            Text(reminderList.name)
            Spacer()
            Text("\(reminderList.reminders.count)")
        }
    }
    var listIcon: some View {
        ZStack {
            Circle()
                .fill(reminderList.color)
                .frame(width: 27)
            Image(systemName: reminderList.iconName)
                .font(.footnote)
                .foregroundColor(.white)
                .bold()
                .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ReminderListListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListListRowView(reminderList: ReminderList.example)
    }
}
