//
//  NavStack.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 16/1/25.
//

import SwiftUI

struct NavStack: View {
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    Button(" Nav Button") {
                        stackPath.append(contentsOf: ["Coconut", "Mango", "Banana"])
                    }
                }
            }
            .navigationTitle("NavigationStack")
            .navigationDestination(for: String.self) { value in
                Text("Another Screen of: \(value)")
            }
        }
    }
}

#Preview {
    NavStack()
}
