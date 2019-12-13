//
//  ContentView.swift
//  HamburgerMenu
//
//  Created by Levit Kanner on 13/12/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showSideMenu = false
    
    var body: some View {
        
        let dragGesture = DragGesture()
            .onEnded { (dragAmount) in
                if dragAmount.translation.width < -100 {
                    withAnimation {
                        self.showSideMenu = false
                    }
                    
                }
        }
        
        return NavigationView{
            GeometryReader{ geometry in
                ZStack(alignment: .leading){
                    MainView(showSideMenu: self.$showSideMenu)
                        .frame(width: geometry.size.width , height:  geometry.size.height)
                        .disabled(self.showSideMenu ? true : false)
                    
                    if self.showSideMenu{
                        MenuView()
                            .frame(width: geometry.size.width * 0.7)
                    }
                }
                .gesture(dragGesture)
                .navigationBarItems(leading:
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .foregroundColor(self.showSideMenu ? .gray : .black)
                        .onTapGesture {
                            withAnimation {
                                self.showSideMenu.toggle()
                            }
                    }
                )
                
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}











struct MainView: View {
    @Binding var showSideMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showSideMenu = true
            }
            
        }){
            Text("show side menu")
        }
    }
}
