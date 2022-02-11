//
//  NavigatorTabs.swift
//  Navegacion
//
//  Created by user190722 on 2/11/22.
//

import SwiftUI

struct NavigatorTabsView: View {
    @State var sports = ["Skate", "Snow", "Surf", "Wake", "Balance", "Long"]
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                        
                }
           ListsView(sports: $sports)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Vertical")
                        
                }
                
            StacksView(sports: $sports)
                .tabItem {
                    Image(systemName: "rectangle.grid.3x2.fill")
                    Text("Horizontal")
                        
                }
        }
    }
}

struct NavigatorTabsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatorTabsView()
    }
}
