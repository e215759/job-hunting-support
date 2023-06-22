//
//  job_hunting_supportApp.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

@main
struct YourApp: App {
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true // 初回起動フラグをAppStorageで管理
    
    var body: some Scene {
        WindowGroup {
            
            let _ = print(isFirstLaunch)
            
            if isFirstLaunch {
                LoginView()
                    .onAppear {
                        isFirstLaunch = false // 初回起動フラグをfalseに設定
                    }
            } else {
                ContentView()
            }
        }
    }
}
