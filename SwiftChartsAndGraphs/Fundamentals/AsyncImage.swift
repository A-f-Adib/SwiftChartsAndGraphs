//
//  AsyncImage.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 15/1/25.
//

import SwiftUI

struct AsyncImage: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url, content: { returnedImg in
                returnedImg
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
        }, placeholder: {
            ProgressView()
        })
    }
}

#Preview {
    AsyncImage()
}
