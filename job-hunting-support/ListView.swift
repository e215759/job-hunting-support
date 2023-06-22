//
//  ListView.swift
//  job-hunting-support
//
//  Created by 宮平保 on 2023/05/25.
//

import SwiftUI

//リスト要素の枠組み作成
//struct CompanyInfo: Identifiable {
//    let id: Int
//    let name: String
//    let date: String
//}

struct ListView: View {
    
    init(){
            UITableView.appearance().backgroundColor = UIColor.white
    }
    
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
        ZStack{
            Color.red
                .ignoresSafeArea()
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
                .scrollContentBackground(Visibility.hidden)
                .navigationTitle("List View")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    
    /*
        NavigationView {
          List{
            ForEach(companys.indices, id: \.self) { section in 
              Section(header: Text("携帯ショップ").font(.system(size: 30)).fontWeight(.heavy)
            ) {
              ForEach(self.companys[section], id: \.id) { company in
                CompanyRow(company: company)
              }
            }
          }
        }
    }
    */
    
    private func binding(for company: Company) -> Binding<Company> {
        guard let companyIndex = CompanyList.firstIndex(of: company) else {
            fatalError("Person not found")
        }
        return $CompanyList[companyIndex]
    }
    
    private func deletecompany(at offsets: IndexSet) {
        
            CompanyList.remove(atOffsets: offsets)

    }

}

struct CompanyDetailsView: View {
    @Binding var company: Company

    var body: some View {
        VStack {
            Text("Name: \(company.name)")
            Text("Industry: \(company.industry)")
            Text("Employees Number: \(company.employees)")
            
            NavigationLink(destination: EditCompanyView(company: $company)) {
                Text("Edit")
            }
        }
        .navigationTitle("Person Details")
    }
}

struct AddCompanyView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var companyList: [Company]
    
    @State var newCompanyName = ""
    @State var newCompanyIndustry = ""
    @State var newCompanyEmployees = 0
    
    var body: some View {
        Form {
            TextField("Name", text:$newCompanyName)
            TextField("Industry", text:$newCompanyIndustry)
            TextField("Employees Number", value:$newCompanyEmployees, format: .number)
        }
        .navigationTitle("Add Company")
        .navigationBarItems(trailing: Button("Save") {
            
            companyList.append(Company(name: newCompanyName, industry: newCompanyIndustry, employees: newCompanyEmployees))
            
            newCompanyName = ""
            newCompanyIndustry = ""
            newCompanyEmployees = 0
            presentationMode.wrappedValue.dismiss()
        })
    }
}

struct EditCompanyView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var company: Company
    @State private var editedCompany: Company

    init(company: Binding<Company>) {
        _company = company
        _editedCompany = State(initialValue: company.wrappedValue)
    }

    var body: some View {
        Form {
            TextField("Name", text: $editedCompany.name)
            TextField("Occupation", text: $editedCompany.industry)
            TextField("Employees Number", value:$editedCompany.employees, format: .number)
        }
        .navigationTitle("Edit Company")
        .navigationBarItems(trailing: Button("Save") {
            company = editedCompany // 変更を反映させる
            presentationMode.wrappedValue.dismiss()
        })
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

