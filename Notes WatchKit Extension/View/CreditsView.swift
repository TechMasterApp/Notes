//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Gaurav Bhasin on 7/8/21.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: - PROPERTIES
    
    @State private var randomNumber = Int.random(in: 1 ..< 4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Aarav Bhasin")
                .foregroundColor(.primary)
                .bold()
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
