//
//  FrameworkGridView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/25/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    // Iterate through all our data
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                print("")
                            }
                            
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Apple Frameworks")
        }
    }
}

#Preview {
        FrameworkGridView()
}

struct FrameworkTitleView: View {

    let framework: Framework
    
//    let name: String
//    let imageName: String
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.system(size: 20, weight: .semibold, design: .serif))
                .minimumScaleFactor(0.6)
        }
    }
}
