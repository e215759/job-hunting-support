//
//  UserDefaults+Extensions.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/06/07.
//

import Foundation

extension UserDefaults {
    static let isFirstLaunchKey = "isFirstLaunch"

    var isFirstLaunch: Bool {
        get { !bool(forKey: Self.isFirstLaunchKey) }
        set { set(!newValue, forKey: Self.isFirstLaunchKey) }
    }
}
