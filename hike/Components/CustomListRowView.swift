//
//  CustomListRowView.swift
//  hike
//
//  Created by kmac on 4/13/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDescription: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDescription != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDescription!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowLabel: "Application", rowIcon: "apps.iphone", rowContent: nil, rowTintColor: .primary,
            rowLinkLabel: "Link Test",
            rowLinkDescription: "https://github.com/ValloonSweet"
        )
    }
    
}
