//
//  FrameworkDetaildView.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 11/06/25.
//

import SwiftUI

struct FrameworkDetaildView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isShowingDetailView = false 
            } label: {
                Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundStyle(Color(.label))
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.horizontal, 20)

            
            Spacer()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
                .fontDesign(.rounded)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButtons(title: "Learn More")
            }
            .padding()
        }
        .padding(.top)
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetaildView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
