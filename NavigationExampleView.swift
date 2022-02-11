//
//  NavigationExampleView.swift
//  Navegacion
//
//  Created by user190722 on 2/10/22.
//

import SwiftUI

struct NavigationExampleView: View {
    var body: some View {
        NavigationView {
            NavigationLink (
                destination: SecondView(),
                label: {
                    Text("Ir a otra pantalla")
                        .navigationBarTitle("Pantalla Inicial")
                })
        }
    }
}

struct SecondView: View {
    var body: some View {
            NavigationLink (
                destination: Text("Tercera pantalla"),
                label: {
                    Text("Ir a otra pantalla más")
                        .navigationBarTitle("Segunda Pantalla")
                })
    }
}

struct NavigationExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExampleView()
    }
}
