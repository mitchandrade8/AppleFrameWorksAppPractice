//
//  FrameworkGridViewModel.swift
//  AppleFrameWorksAppPractice
//
//  Created by Mitch Andrade on 9/27/23.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
}
