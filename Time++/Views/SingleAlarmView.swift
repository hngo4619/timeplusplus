//
//  SingleAlarmView.swift
//  Time++
//
//  Created by Huy on 12/8/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI

struct SingleAlarmView: View {
    @Binding var alarmDate: Date
    @Binding var snooze: Bool
    @Binding var snoozeLength: Int
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker(selection: $alarmDate, in: Date()..., displayedComponents: [.date,.hourAndMinute]) {
                Text("Date")
            }.padding(5)
            
            Divider()
            
            Toggle(isOn: $snooze) {
                Text("Snooze")
            }.padding(5)
            
            if self.snooze {
                HStack {
                    Text("Length")
                    Picker(selection: $snoozeLength, label: Text("")) {
                        ForEach(1 ..< 61) {
                            Text(String($0))
                        }
                    }.pickerStyle(WheelPickerStyle())
                }
            }
        }
    }
}

struct SingleAlarmView_Previews: PreviewProvider {
    @State static var alarmDate = Date()
    @State static var snooze = false
    @State static var snoozeLength = 1
    
    static var previews: some View {
        SingleAlarmView(alarmDate: .constant(Date()), snooze: .constant(false), snoozeLength: .constant(1))
    }
}
