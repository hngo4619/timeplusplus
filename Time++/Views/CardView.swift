//
//  CardView.swift
//  Time++
//
//  Created by Huy on 12/7/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                .padding()
                .border(Color.gray, width: 2)
         
                Spacer()
            }
            .padding()
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(category: "Example Category", heading: "Example Heading", author: "Huy Ngo")
    }
}
