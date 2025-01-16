//
//  ButtonStyles.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 16/1/25.
//

import SwiftUI

struct ButtonStyles: View {
    
    var body: some View {
        
        VStack{
            
            Button("Button styles") { }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .buttonStyle(.plain)
                .controlSize(.small)
            
            Button("Button styles") { }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.regular)
            
            Button("Button styles") { }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.large)
            
            Button("Button styles") { }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
        }
    }
}

#Preview {
    ButtonStyles()
}
