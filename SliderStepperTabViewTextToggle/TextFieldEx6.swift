//
//  TextFieldEx6.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx6: View {
    @State private var txtData = ""
    @State private var disabled = false
    @State private var username = "Anıl Karaçay"
    var body: some View {
        VStack(spacing:15){
            TextField("Tel no: ", text:$txtData).keyboardType(.phonePad)
            
            TextField("Parola",text:$txtData).keyboardType(.numbersAndPunctuation)
            
            TextField("Mesajınız giriniz",text:$txtData).disableAutocorrection(false)
            
            Toggle("Bilgilerin Düzenlensin",isOn:$disabled)
            TextField("Adınız Soyadınız",text:$username).disabled(disabled).opacity(disabled ? 0.5 : 1)
        }.textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
    }
}

struct TextFieldEx6_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx6()
    }
}
