//
//  DownloadAndUploadView.swift
//  VPNAppUIDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct DownloadAndUploadView: View {
    var body: some View {
        HStack {
            Spacer()
            
            HStack {
                Image(systemName: "arrow.down")
                    .font(.system(size: 16, weight: .bold))
                    .frame(width: 40, height: 40)
                    .background(Color(#colorLiteral(red: 0.8756303787, green: 0.001817804878, blue: 0.00445794221, alpha: 1)))
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.8756303787, green: 0.001817804878, blue: 0.00445794221, alpha: 1)).opacity(0.7), radius: 5)
                
                VStack(alignment: .leading) {
                    Text("Download")
                        .font(.system(size: 18))
                    
                    HStack {
                        Text("49.8")
                            .font(.system(size: 18, weight: .bold))
                        
                        Text("KB/s")
                    }
                    .padding(.top, 4)
                }
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "arrow.up")
                    .font(.system(size: 16, weight: .bold))
                    .frame(width: 40, height: 40)
                    .background(Color(#colorLiteral(red: 0.02041932754, green: 0.6300039887, blue: 0.03799376637, alpha: 1)))
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.02041932754, green: 0.6300039887, blue: 0.03799376637, alpha: 1)).opacity(0.7), radius: 5)
                
                VStack(alignment: .leading) {
                    Text("Upload")
                        .font(.system(size: 18))
                    
                    HStack {
                        Text("13.2")
                            .font(.system(size: 18, weight: .bold))
                        
                        Text("KB/s")
                    }
                    .padding(.top, 4)
                }
            }
            
            Spacer()
        }
        .padding(.top, 32)
    }
}

struct DownloadAndUploadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadAndUploadView()
    }
}
