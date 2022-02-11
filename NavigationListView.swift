//
//  NavigationListView.swift
//  Navegacion
//
//  Created by user190722 on 2/10/22.
//

import SwiftUI

struct ListsView: View {
    @Binding var sports : [String]
    var body: some View {
        NavigationView {
            List {
                ForEach(sports, id: \.self) { sport in
                        NavigationLink(
                            destination: DetailView(sport: sport)) {
                            Image(sport)
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text(sport)
                        }
                }.onDelete { (i) in
                        self.sports.remove(atOffsets: i)
                }
            }.navigationBarTitle("Board Sports")
        }
    }
}

struct DetailView: View {
    var sport = "skate"
    var body: some View {
        VStack {
            Image(sport)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 500)
            Spacer()
        }.navigationBarTitle(sport)
        .edgesIgnoringSafeArea(.top)
    }
}

/*
struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView(sports: ["Skate", "Snow", "Surf", "Wake", "Balance", "Long"])
    }
}
*/
