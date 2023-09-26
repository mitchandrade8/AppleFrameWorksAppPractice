//
//  FrameworkGridView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/25/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                // Iterate through all our data
                ForEach(MockData.frameworks, id: \.self) { framework in
                    FrameworkTitleView(name: framework.name,
                                       imageName: framework.imageName)

                }
            }
            .padding(.top)
        }
        .navigationTitle("Apps")
    }
}

#Preview {
    NavigationView {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(name)
                .font(.system(size: 20, weight: .semibold, design: .serif))
                .minimumScaleFactor(0.6)
        }
    }
}
