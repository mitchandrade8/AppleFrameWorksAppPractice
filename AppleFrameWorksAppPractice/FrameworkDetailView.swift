//
//  FrameworkDetailView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/26/23.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework: Framework
    
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
              AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}

