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
        
        Button("Decode json") {
            let input = """
                {
                  "name" : "Taylor swift",
                  "address" : {
                            "City" : "111, New York ",
                            "Country" : "USA"
                   }
                }
                """
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.City)
            }
        }
    }
}

#Preview {
    CodableData()
}
