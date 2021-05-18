//
//  SliderEx2.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SliderEx2: View {
    @State private var example = 0.5
    var body: some View {
        VStack(spacing:20){
            Text("Slider Örnek 2").font(.largeTitle)
            Slider(value: $example).padding(.horizontal,10).background(Color.orange).cornerRadius(10).shadow(color: .gray, radius: 2,  y:3 ).padding(.horizontal,10)
            Text("Çizginin rengini değiştirmek için accentColor metodunu kullanabilirsiniz.")
            Slider(value:$example).padding(.horizontal,10).accentColor(.orange)
            Text("Slider ve Kenarlık")
            Slider(value: $example).padding(10).background(RoundedRectangle(cornerRadius: .infinity))
            Slider(value: $example).padding(10).background(Capsule().stroke(Color.orange,lineWidth: 3) ).padding(.horizontal)
            Slider(value: $example).padding().background(Capsule().fill(Color.orange)).accentColor(.black).padding(.horizontal)
        }
    }
}

struct SliderEx2_Previews: PreviewProvider {
    static var previews: some View {
        SliderEx2()
    }
}
