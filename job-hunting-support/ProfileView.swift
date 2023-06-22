//
//  ProfileView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State var name: String = ""
    @State var userId = ""
    @State var year: Int = 0
    @State var isShowAlert = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 80){
                VStack(spacing: 20)/*(alignment: .leading)*/{
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
                    TextField("あなたの学年", value: $year, format: .number)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                
                Button("タップしてね") {
                    self.isShowAlert = true          // ②タップされたら表示フラグをtrueにする
                }
                .alert(isPresented: $isShowAlert) {  // ③アラートの表示条件設定
                    Alert(title: Text("本当にログアウトしますか？"),
                        message: Text("ログアウトすると、次回アプリを開いていただいた時に再度ログインしてもらう必要があります。"),primaryButton: .destructive(Text("ログアウト")),secondaryButton: .cancel(Text("キャンセル")))
                        
                }
                /*
                Button{
                    //ここにログアウトボタンが押された時の処理
                }label: {
                    Text("ログアウト")
                }
                 */
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
