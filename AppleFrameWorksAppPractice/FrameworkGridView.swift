//
//  FrameworkGridView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/25/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let sample = MockData.sampleFramework
    
    var body: some View {
        VStack {
            Image(sample.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(sample.imageName.capitalized)
                .font(.system(size: 32, weight: .bold, design: .default))
        }
    }
}

#Preview {
    FrameworkGridView()
}

