//
//  FrameworkDetailView.swift
//  My-Frameworks
//
//  Created by Imam Robani on 18/09/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework : Framework
    @Binding var isShowingDetail: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetail: $isShowingDetail)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,
                            isShowingDetail: .constant(true))
            .preferredColorScheme(.dark)
    }
}
