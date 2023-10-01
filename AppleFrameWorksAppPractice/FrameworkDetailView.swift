//
//  FrameworkDetailView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/26/23.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework: Framework
    /// If passing data down 2 or more views then consider using Environment
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
              AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(true))
}

