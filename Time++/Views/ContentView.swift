//
//  ContentView.swift
//  Time++
//
//  Created by Huy on 12/4/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = "alarm"
 
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("time++")
                    .font(.title)
                Spacer()
            }
            .padding()
            TabView(selection: $selection){
                AlarmView()
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image("alarm")
                            Text("Alarms")
                        }
                    }
                    .tag("alarm")
                HomeView()
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image("house")
                            Text("Home")
                        }
                    }
                    .tag("home")
                TimerView()
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image("timer")
                            Text("Timers")
                        }
                    }
                    .tag("timer")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
