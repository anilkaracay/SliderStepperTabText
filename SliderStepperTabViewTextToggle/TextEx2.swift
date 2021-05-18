//
//  TextEx2.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 13.05.2021.
//

import SwiftUI

struct TextEx2: View {
    @State private var editActive = true
    var body: some View {
        VStack(spacing:20){
            Text("Bold").bold()
            Text("Italic").italic()
            Text("Geçersiz").strikethrough()
            Text("Kırmızı üstü çizili").strikethrough(editActive, color: Color.red)
            Text("Yazının rengi mavi").foregroundColor(.blue)
            Text("altı çizili").underline()
            Text("altı mor çizili").underline(editActive, color: Color.purple)
            
            Toggle("Düzenleme aktif",isOn:$editActive).padding(.horizontal)
            
            VStack(spacing:10){
                Text("Senden sonra arabaya binip yola çıkabilirim istersen").lineLimit(1).padding(.horizontal).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.red)
                Text("Senden sonra arabaya binip yola çıkabilirim istersen ").padding(.horizontal).foregroundColor(.green).lineLimit(1).allowsTightening(true)
                Text("Bugün hava sıcak olmasına rağmen insanlar dışarda gezmeye devam ediyor.").foregroundColor(.red).padding(.horizontal).lineLimit(1).minimumScaleFactor(0.3)
            }
        }
        
    }
}

struct TextEx2_Previews: PreviewProvider {
    static var previews: some View {
        TextEx2()
    }
}
