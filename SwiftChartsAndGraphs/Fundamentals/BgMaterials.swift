//
//  BgMaterials.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 15/1/25.
//

import SwiftUI

struct BgMaterials: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
                
                Text("Hello World!")
                    .textSelection(.enabled) //it enables the text to be copied. default it is disabled
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(Image("locationFinder"))
    
    }
}

#Preview {
    BgMaterials()
}
