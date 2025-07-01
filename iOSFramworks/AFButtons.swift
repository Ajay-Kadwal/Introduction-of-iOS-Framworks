//
//  AFButtons.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 11/06/25.
//

import SwiftUI

struct AFButtons: View {
    
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.red)
            .cornerRadius(10)
    }
}

#Preview {
    AFButtons(title: "Learn More")
}
