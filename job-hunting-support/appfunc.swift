//
//  appfunc.swift
//  job-hunting-support
//
//  Created by ibu.m ev on 2023/05/25.
//

import Foundation
import SwiftUI

struct company: Identifiable{
    var id = UUID()
    @State var name: String = ""
    @State var industry: String = ""
    @State var employees: Int = 0
    
    init(id: UUID = UUID(), name: String, industry: String, employees: Int) {
        self.id = id
        self.name = name
        self.industry = industry
        self.employees = employees
    }
    func change(_name: String, _industry: String, _employees: Int){
        self.name = _name
        self.industry = _industry
        self.employees = _employees
    }
}


