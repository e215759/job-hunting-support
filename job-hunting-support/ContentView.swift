//
//  ContentView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView {
                HomeView()
                    .tabItem{Image(systemName: "house.fill")
                    Text("Home")
                }
                ListView()
                    .tabItem{Image(systemName: "list.dash")
                    Text("List")
                }
                ProfileView()
                    .tabItem{Image(systemName: "person.fill")
                    Text("Profile")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
