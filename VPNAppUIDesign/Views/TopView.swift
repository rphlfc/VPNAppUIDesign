//
//  TopView.swift
//  VPNAppUIDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            Text("VPN")
                .font(.system(size: 28, weight: .heavy))
            
            Text("FREE")
                .font(.system(size: 16))
                .frame(width: 60, height: 25)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(10, corners: [.topLeft, .topRight, .bottomRight])
                .offset(x: -5, y: -10)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                
                Text("Go Premium")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color.white)
            }
            .frame(width: 140, height: 50)
            .background(Color.black.opacity(0.6))
            .cornerRadius(20)
        }
        .padding(.vertical)
        .padding(.horizontal, 30)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
