//
//  FrameworkGridView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/25/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                // Iterate through all our data
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(
                        framework: framework,
                        isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
        FrameworkGridView()
}


