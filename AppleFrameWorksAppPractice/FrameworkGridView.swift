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

struct FrameworkTitleView: View {

    let framework: Framework

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
