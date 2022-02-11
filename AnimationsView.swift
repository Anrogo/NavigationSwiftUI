//
//  AnimationsView.swift
//  Navegacion
//
//  Created by user190722 on 2/11/22.
//

import SwiftUI

struct AnimationsView: View {
    @State var show = false

    var body: some View {
        VStack {
            Button("Anímate!"){
                withAnimation {
                    //Cambia de true a false y viceversa cada vez que pulsamos el boton
                    self.show.toggle()
                }
            }
            if show {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: AnyTransition.slide.combined(with: .opacity)))
            }
            
        }
    }
}

struct AnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsView()
    }
}

