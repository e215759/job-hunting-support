//
//  ProfileView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var name = ""
    @State private var userId = ""
    @State private var year = ""
    
    var body: some View {
        NavigationStack {
            VStack/*(alignment: .leading)*/{
                Spacer().frame(height: 50)
                Text("ユーザー名")
                TextField("ユーザー名", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())  // 入力域のまわりを枠で囲む
                    .padding()  // 余白を追加
                Text("ユーザーID")
                TextField("ユーザーID", text: $userId)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text("学年")
                TextField("あなたの学年", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Spacer()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

/*
struct ProfileWindow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileWindow()
    }
}
*/
