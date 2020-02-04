//
//  AlarmView.swift
//  Time++
//
//  Created by Huy on 12/7/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI
import ModalView

struct AlarmView: View {
    var body: some View {
        VStack {
            
//
//            ModalPresenter {
//                ModalLink(destination: AddAlarmView()) {
//                    Text("Add Alarm")
//                }
//            }
            
            ModalPresenter {
                ModalLink(destination: { dismiss in
                    AddAlarmView()
                    
                    Button(action: dismiss) {
                        Text("Cancel")
                    }
                }) {
                    Text("Add Alarm")
                }
            }
                        
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    CardView(category: "Test", heading: "Header", author: "Huy Ngo")
                }
            }
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
