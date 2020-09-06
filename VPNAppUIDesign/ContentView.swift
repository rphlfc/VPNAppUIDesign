//
//  ContentView.swift
//  VPNAppUIDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9978883862, green: 0.8312121034, blue: 0.224271208, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                TopView()
                
                RecentConnectionsView()
                
                MainView()
                
                DownloadAndUploadView()
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
