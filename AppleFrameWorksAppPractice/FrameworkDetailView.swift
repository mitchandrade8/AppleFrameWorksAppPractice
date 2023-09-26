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
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}

