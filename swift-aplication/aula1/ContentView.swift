//
//  ContentView.swift
//  tercafeiraaula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI


struct ContentView: View {
    @State private var idadeHumanaDigitada: String = ""
    @State private var idadeDoCao: String = ""
    @State private var erro: Bool = false
        
        func calcularIdadeHumana() {
            
            if let idade = Int(idadeHumanaDigitada),idade>0{
                let resultado = idade*7
                idadeDoCao = "\(resultado) anos"
                erro = false
            } else {
                idadeDoCao = "Digite um número válido"
                erro = true
            }
        }
    func limpatela(){
        idadeHumanaDigitada=""
        idadeDoCao=""
    }

    var body: some View {
        VStack {
            Image("download")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            
            Text("Calculadora de Idade Canina")
            TextField(
                    "Digite a idade humana",
                    text: $idadeHumanaDigitada
            )
            Button(action: calcularIdadeHumana) {
                Text("Calcular")
            }
            Button(action: limpatela) {
                Text("Limpar Tela")
                    .padding()
                    .frame(width:150)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            if (erro == false){
                Text(idadeDoCao)
            }
            
            
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
