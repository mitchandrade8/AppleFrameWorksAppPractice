//
//  FrameworkTitleView.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/29/23.
//

import SwiftUI

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

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
