//
//  CodableData.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 15/1/25.
//

import SwiftUI


struct User : Codable {
    let name : String
    let address : Address
}

struct Address : Codable {
    let City : String
    let Country : String
}


struct CodableData: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CodableData()
}
