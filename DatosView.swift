//
//  DatosView.swift
//  Navegacion
//
//  Created by user190722 on 2/11/22.
//

import SwiftUI

struct DatosView: View {
    @State var saludo = "Hola"
    var body: some View {
        SaludoView(saludo: $saludo)
            .onTapGesture {
                self.saludo = "ADIOS"
            }
    }
}

struct SaludoView: View {
    @Binding var saludo: String
    var body: some View {
        Text(saludo)
            .font(.title)
            .foregroundColor(Color.green)
    }
}


struct DatosView_Previews: PreviewProvider {
    static var previews: some View {
        DatosView(saludo: "Datos")
    }
}
