//
//  PopupsView.swift
//  Navegacion
//
//  Created by user190722 on 2/11/22.
//

import SwiftUI

struct PopupsView: View {
    @State var showAlert = false
    @State var showOptions = false
    @State var response = ""
    var body: some View {
        VStack {
            Button("Mostrar alerta"){
                self.showAlert = true
            }.padding()
            Text(response)
                .foregroundColor(response.contains("SÍ") ? Color.green : Color.red)
            Button("Mostrar menú opciones"){
                self.showOptions = true
            }.padding()
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Hola,"),
                message: Text("Estás bien??"),
                primaryButton: .default(Text("Sí"), action: {
                    self.response = "Has dicho que SÍ"
                }),
                secondaryButton: .destructive(Text("No"), action: {
                    self.response = "Has dicho que NO"
                })
            )
        }.actionSheet(isPresented: $showOptions) {
            ActionSheet(title: Text("Opciones"),
                        message: Text("Cómo de bien?"),
                        buttons: [
                                .default(Text("Bien")),
                                .default(Text("Regular")),
                                .destructive(Text("Mal"))])
        }
    }
}

struct PopupsView_Previews: PreviewProvider {
    static var previews: some View {
        PopupsView()
    }
}
