//
//  SafariView.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 12/06/25.
//

import SwiftUI
import SafariServices

// UIViewControllerRepresentable -> is the Protocol in SwiftUI that let us to use UIkit view Controller in SwiftUI
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
