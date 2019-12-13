//
//  MenuView.swift
//  HamburgerMenu
//
//  Created by Levit Kanner on 13/12/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Profile")
                    .foregroundColor(.gray)
                    .font(.custom("AvenirNext-Regular", size: 15))
            }
            .padding(.top , 100)
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Messages")
                    .foregroundColor(.gray)
                    .font(.custom("AvenirNext-Regular", size: 15))
            }
            .padding(.top , 30)
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Settings")
                    .foregroundColor(.gray)
                    .font(.custom("AvenirNext-Regular", size: 15))
            }
            .padding(.top , 30)
            
            Spacer()
            
            Text("copyright© 2019")
                .font(.custom("AvenirNext-Regular", size: 12))
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity , alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
        .transition(.move(edge: .leading))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
