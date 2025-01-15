//
//  AsyncImage.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 15/1/25.
//

import SwiftUI

struct asyncImage: View {
    
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

//same thing can be implemented by this way:
struct AsyncImageTwo: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
           
            switch phase {
                
            case .empty:
                ProgressView()
                
            case .success(let returnImg):
                returnImg
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    asyncImage()
}
