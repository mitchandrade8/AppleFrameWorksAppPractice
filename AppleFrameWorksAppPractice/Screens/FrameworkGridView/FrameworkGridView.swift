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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    // Iterate through all our data
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                            
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
        FrameworkGridView()
}


