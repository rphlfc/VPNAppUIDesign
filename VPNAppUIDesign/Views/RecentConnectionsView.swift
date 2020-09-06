//
//  RecentConnectionsView.swift
//  VPNAppUIDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct RecentConnectionsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent Connection")
                .fontWeight(.bold)
                .padding(.horizontal, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ConnectionCardView(flag: "usa", country: "United States", status: "Connected", connected: true)
                    
                    ConnectionCardView(flag: "germany", country: "Germany", status: "Connect", connected: false)
                }
                .padding(.horizontal, 30)
            }
            .padding(.top)
        }
        .padding(.top)
    }
}

struct ConnectionCardView: View {
    var flag: String
    var country: String
    var status: String
    var connected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(flag)
                .resizable()
                .frame(width: 40, height: 30)
            
            Text(country)
                .font(.system(size: 16, weight: .bold))
            
            
            HStack {
                Image(systemName: "checkmark.shield")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(connected ? Color.green : Color.clear)
                
                Text(status)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(connected ? Color.green : Color.black)
                    .offset(x: connected ? 0 : -24)
                
                Spacer()
            }
        }
        .frame(width: 150)
        .padding()
        .background(connected ? Color.white : Color.black.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.3), radius: 5)
    }
}

struct RecentConnectionsView_Previews: PreviewProvider {
    static var previews: some View {
        RecentConnectionsView()
    }
}
