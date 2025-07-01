//
//  FrameworkGridView.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 11/06/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var vm = FrameWorkViewModel()
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framwork in
                        FrameworkTitleView(framework: framwork)
                            .onTapGesture {
                                vm.selecedFrawork = framwork
                            }
                    }
                }
            }
            .navigationTitle("🍎  Frameworks")
            .sheet(isPresented: $vm.isShowingDetailView) {
                FrameworkDetaildView(framework: vm.selecedFrawork ?? MockData.sampleFramework, isShowingDetailView: $vm.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


struct FrameworkTitleView:  View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.headline)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


