//
//  CustomCircleView.swift
//  hike
//
//  Created by kmac on 4/11/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimationGraident: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimationGraident ? .topLeading : .bottomLeading,
                        endPoint: isAnimationGraident ? .bottomTrailing : .topTrailing
                    )
                    
            )
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimationGraident.toggle()
                }
            }
            MotionAnimationView()
        }.frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
