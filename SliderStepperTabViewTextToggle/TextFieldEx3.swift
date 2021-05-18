//
//  TextFieldEx3.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx3: View {
    @State private var txtString = "Metin Var"
    @State private var txtNoString = ""
    @State private var txtBorder = "Kenarlıklı"
    var body: some View {
        VStack(spacing:20){
            Text("TextField Örnek 3 ").font(.largeTitle)
            TextField("PlaceHolder Text",text:$txtNoString).padding(10).background(RoundedRectangle(cornerRadius: 10)).foregroundColor(Color.init(hue: 0.126, saturation: 0.46, brightness: 0.96)).padding()
            
            TextField("",text:$txtBorder).padding(10).overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange,lineWidth: 3)).padding()
            TextField("",text:$txtString).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(.orange).padding(.horizontal)
        }
    }
}

struct TextFieldEx3_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx3()
    }
}
