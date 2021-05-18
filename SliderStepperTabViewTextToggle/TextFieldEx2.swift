//
//  TextFieldEx2.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx2: View {
    @State private var txtLeading = "Leading"
    @State private var txtCenter = "Center"
    @State private var txtTrailing = "Trailing"
    @State private var txtUsername = ""
    
    var body: some View {
        VStack(spacing:20){
            Text("TextField Örnek 2 ").font(.largeTitle)
            Text("Alignment ve Font Size")
            TextField("",text:$txtLeading).textFieldStyle(RoundedBorderTextFieldStyle()).multilineTextAlignment(.leading)
            TextField("",text:$txtCenter).textFieldStyle(RoundedBorderTextFieldStyle()).multilineTextAlignment(.center)
            TextField("",text:$txtTrailing).textFieldStyle(RoundedBorderTextFieldStyle()).multilineTextAlignment(.trailing)
            TextField("Adınız Soyadınız",text:$txtUsername).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Adınız Soyadınız",text:$txtUsername).textFieldStyle(RoundedBorderTextFieldStyle()).font(Font.system(size: 24, weight: .black, design: .monospaced)).padding(.horizontal)
            TextField("Adınız Soyadınız",text:$txtUsername).font(Font.system(size: 26, weight: .heavy, design: .serif)).padding(.horizontal).textFieldStyle(RoundedBorderTextFieldStyle())
        }.font(.title)
    }
}

struct TextFieldEx2_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx2()
    }
}
