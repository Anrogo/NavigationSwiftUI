//
//  StacksView.swift
//  Navegacion
//
//  Created by user190722 on 2/11/22.
//

import SwiftUI

struct StacksView: View {
    @Binding var sports : [String]
    var body: some View {
        ZStack {
            Color.green
            VStack (alignment: .leading){
                Text("Board Sports")
                    .font(.largeTitle)
                    .padding()
                Divider()
                ScrollView(.vertical, showsIndicators: false){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack (alignment: .center, spacing: 24){
                            ForEach(sports, id: \.self) { sport in
                                VStack {
                                    Text(sport)
                                    ImageBoard(sport: sport)
                                }
                            }
                        }.padding(16)
                    }
                }
            }
        }
    }
}

struct ImageBoard: View {
    @State var expanded = true
    var sport = "surf"
    var body: some View {
        Image(sport)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: expanded ? 370 : 100)
            .clipShape(Capsule())
            .shadow(radius: 20)
            .rotation3DEffect(
                .degrees(expanded ? 0 : 360),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                anchorZ: 0.0,
                perspective: 1.0
            )
            .onTapGesture {
                self.expanded.toggle()
            }.animation(.spring(dampingFraction: 0.5))
    }
}
/*
struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView(sports: ["Skate", "Snow", "Surf", "Wake", "Balance", "Long"])
    }
}
*/
