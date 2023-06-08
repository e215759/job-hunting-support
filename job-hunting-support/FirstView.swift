//
//  FirstView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

struct FirstView: View {
    
    @State private var isButtonPressed = false
    
    var body: some View {
        VStack {
            // 他のコンテンツを追加
            
            Button("ボタン") {
                isButtonPressed = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: $isButtonPressed) {
            ContentView()
        }
    }
    
    /*
    var body: some View {
        VStack {
            // 他のコンテンツを追加
            
            Button("ボタン") {
                isButtonPressed = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: $isButtonPressed) {
            ContentView()
        }
        /*
        NavigationView {
            VStack {
                // 他のコンテンツを追加
                
                NavigationLink(destination: ContentView(), isActive: $isButtonPressed) {
                    EmptyView()
                }
                
                Button("ボタン") {
                    isButtonPressed = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
         */
    }
            /*
            // 他のコンテンツを追加
            Button("ボタン") {
                isButtonPressed = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            // 遷移先のViewを表示
            if isButtonPressed {
                ContentView()
            }
             */
        /*
        HStack{
            // ユーザー情報入力用のビューを構築します
            Text("Welcome! Create your account.")
            Button("次へ") {
                // 遷移先のViewを表示する処理を書く
                ContentView()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
         */
    }
     */
}
