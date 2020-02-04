//
//  AddAlarmView.swift
//  Time++
//
//  Created by Huy on 12/7/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI

struct AddAlarmView: View {
    @State private var name: String = ""
    @State private var description: String = ""
    
    @State private var selectedType: Int = 0
    @State private var types = ["Single", "Interval"]
    
    @State private var alarmDate: Date = Date()
    @State private var snooze: Bool = false
    @State private var snoozeLength: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("My New Alarm", text: $name)
                }
                
                Section(header: Text("Description")) {
                    TextField("Alarm for M-F 6AM Gymtime", text: $description)
                }
                
                Section(footer: Text("Single alarms will trigger once. Interval alarms will trigger every X minutes from the starting to ending time.")) {
                    
                    Picker(selection: $selectedType, label: Text("Alarm Type")) {
                        ForEach(0 ..< types.count) {
                            Text(self.types[$0]).tag($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    if self.selectedType == 0 {
                        SingleAlarmView(alarmDate: $alarmDate, snooze: $snooze, snoozeLength: $snoozeLength)
                    } else if self.selectedType == 1 {
                        IntervalAlarmView()
                    }
                }
                
                Section {
                    Button(action: {
                        self.snoozeLength += 1
                    }) {
                        Text("Save Alarm")
                    }.disabled(self.name.isEmpty)
                }
            }.navigationBarTitle("Add Alarm")
        }
    }
}

struct AddAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlarmView()
    }
}
