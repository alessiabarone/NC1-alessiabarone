//
//  ListCardView.swift
//  RemindersApp
//
//  Created by Alessia Barone on 22/11/23.
//

import SwiftUI

struct ListCardView: View {
    @Binding var reminderList: ReminderList
    @State private var linkIsActive = false
    var body: some View {
        Button {
            linkIsActive = true
        } label: {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                     
                    Spacer()
                    Text("\(reminderList.reminders.count)")
                        .font(.system(.title, design: .rounded, weight: .bold))
                        .padding(.trailing)
                    
                        
                }
                Text(reminderList.name)
                    .font(.system(.body, design: .rounded, weight: .bold))
                    .foregroundColor(.secondary)
                
                
            }
            .padding(5)
            .padding(.horizontal, 5)
            .background(Color(UIColor.tertiarySystemFill))
            .cornerRadius(10)
        }
       
        .buttonStyle(.plain)
    }
    
 
}

struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView(reminderList: .constant(ReminderList.example))
    }
}


 
