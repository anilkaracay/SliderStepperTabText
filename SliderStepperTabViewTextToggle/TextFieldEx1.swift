//
//  TextFieldEx1.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx1: View {
    @State var txt = ""
    var body: some View {
        VStack(spacing:20){
            Text("TextField Örnek 1 ").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Image(systemName: "arrow.down.circle")
            TextField("",text: $txt)
            Image(systemName: "arrow.up.circle")
            TextField("Kullanıcı adıızı giriniz",text:$txt).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            VStack(spacing:20){
                TextField("Buraya title text girilecek",text:$txt).textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("asddsa",text:$txt).textFieldStyle(RoundedBorderTextFieldStyle())
            }.font(.none).padding(.horizontal)
        }.font(.title)
    }
}

struct TextFieldEx1_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx1()
    }
}
