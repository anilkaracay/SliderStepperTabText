//
//  SliderEx1.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SliderEx1: View {
    @State private var sliderValue = 0.3
    @State private var age = 19.0
    let formatAge : NumberFormatter = {
        let nFormatter = NumberFormatter()
        nFormatter.numberStyle = .spellOut
        return nFormatter
    }()
    var body: some View {
        VStack(spacing:20){
            Text("Slider Örnek 1 ").font(.largeTitle)
            Text("Slider değer aralığı 0 ile 1 arasındadır.").foregroundColor(.red).font(.title2)
            Slider(value: $sliderValue){
            
            }.padding()
            Text("Seçilen değer : ").bold() + Text("\(sliderValue)").foregroundColor(.orange)
            Text("Kaç yaşındasın?").font(.title).foregroundColor(.gray)
            Slider(value: $age, in: 1...100,step:1).padding()
            Text("Yaşınız: ") + Text("\(formatAge.string(from: NSNumber(value:age))!)").foregroundColor(.red).bold()

        }
                
    }
}

struct SliderEx1_Previews: PreviewProvider {
    static var previews: some View {
        SliderEx1()
    }
}
