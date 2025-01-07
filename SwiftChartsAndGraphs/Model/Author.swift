//
//  Author.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 8/1/25.
//

import Foundation

struct Author {
    
    let id = UUID()
    let name: String
    
    static var example = Author(name: "George R. R. Martin")
    
    static var examples = [
        Author(name: "J.K. Rowling"),
        Author(name: "George R. R. Martin"),
        Author(name: "J.R.R. Tolkien"),
        Author(name: "Agatha Cristie"),
        Author(name: "Stephen King"),
        Author(name: "Dan Brown"),
        Author(name: "Harper Lee"),
        Author(name: "Jane Austen"),
        Author(name: "F. Scott Fritgerad"),
        Author(name: "Ernest Hemingway")
    ]
}
