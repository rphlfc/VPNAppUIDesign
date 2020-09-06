//
//  MainView.swift
//  VPNAppUIDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        ZStack {
            Image("map")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.black.opacity(0.1))
            
            VStack {
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 40)
                        .strokeBorder(Color.black.opacity(0.2), lineWidth: 20)
                        .overlay(
                            Image(systemName: "power")
                                .font(.system(size: 40, weight: .bold))
                                .frame(width: 120, height: 120)
                                .background(Color(#colorLiteral(red: 0.2235063612, green: 0.2235441506, blue: 0.2234980762, alpha: 1)))
                                .foregroundColor(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                    )
                        .frame(width: 140, height: 140)
                }
                
                Text("00:45:29")
                    .font(.system(size: 40, weight: .bold))
                    .padding(.top, 32)
                
                Button(action: {}) {
                    Image(systemName: "mappin")
                    
                    Text("Other Location")
                    
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(Color.black)
                
            }
            .padding(.top, 32)
        }
        .padding(.top, 20)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
