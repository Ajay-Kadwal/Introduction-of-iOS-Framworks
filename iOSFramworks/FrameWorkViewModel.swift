//
//  FrameWorkViewModel.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 11/06/25.
//

import SwiftUI


final class FrameWorkViewModel: ObservableObject {
    var selecedFrawork: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
    
    
}
