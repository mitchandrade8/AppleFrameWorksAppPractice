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
            
            HStack {
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            
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

