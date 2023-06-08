//
//  ListView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

//リスト要素の枠組み作成
struct CompanyInfo: Identifiable {
    let id: Int
    let name: String
    let date: String
}

struct ListView: View {
    
    let companys: [[CompanyInfo]] = [
        [.init(id: 0, name: "AU", date: "7/5"),
        .init(id: 1, name: "softbank", date: "7/15"),
        .init(id: 2, name: "docomo", date: "7/25")],
        
        [.init(id: 0, name: "AU", date: "7/5"),
        .init(id: 1, name: "softbank", date: "7/15"),
        .init(id: 2, name: "docomo", date: "7/25")],
        
        [.init(id: 0, name: "AU", date: "7/5"),
        .init(id: 1, name: "softbank", date: "7/15"),
        .init(id: 2, name: "docomo", date: "7/25")],
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(companys.indices, id: \.self) { section in
                    Section(header: Text("携帯ショップ")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                    ) {
                        ForEach(self.companys[section], id: \.id) { company in
                            CompanyRow(company: company)
                        }
                    }
                }
            }
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CompanyRow: View {
    let company: CompanyInfo
    
    var body: some View {
        HStack {
            Text(company.name)
                .font(.headline)
            Text(company.date)
                .font(.headline)
                .padding(.leading, 20)
        }
    }
}

/*
struct ListWindow_Previews: PreviewProvider {
    static var previews: some View {
        ListWindow()
    }
}
*/
