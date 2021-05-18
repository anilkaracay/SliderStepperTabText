//
//  ToggleEx1.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct ToggleEx1: View {
    @State private var open = true
    var body: some View {
        Color.black.edgesIgnoringSafeArea(.vertical).overlay(
            VStack(spacing:20){
                Text("Toggle Örnek 1").font(.largeTitle)
                Text("Toggle varsayılan haliyle parenta ait tüm genişliği kaplar").frame(maxWidth:.infinity)
                Toggle("Uyarı Modu", isOn:$open).padding(.horizontal)
                Toggle(isOn: $open, label: {
                    Text("Gece modu")
                    Image(systemName: "moon")
                }).padding()
                VStack{
                    Text("Alarm Açık")
                    Toggle("",isOn:$open).labelsHidden()
                }.padding(25).background(Color.blue).cornerRadius(20).shadow(color: .white, radius: 40, x: 0, y: 2)
            }.foregroundColor(.white)
        )
    }
}

struct ToggleEx1_Previews: PreviewProvider {
    static var previews: some View {
        ToggleEx1()
    }
}
