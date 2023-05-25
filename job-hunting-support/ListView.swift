//
//  ListView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(1..<20) { index in
                NavigationLink(destination: NextView(index: index)) {
                    Text("\(index)番目")
                }
            }
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NextView: View {
    var index: Int
    var body: some View {
        Text("\(index)番目")
        .navigationTitle("Next View")
    }
}

/*
struct ListWindow_Previews: PreviewProvider {
    static var previews: some View {
        ListWindow()
    }
}
*/
