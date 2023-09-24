//
//  XDismissButton.swift
//  My-Frameworks
//
//  Created by Imam Robani on 18/09/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetail = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetail: .constant(false))
    }
}
