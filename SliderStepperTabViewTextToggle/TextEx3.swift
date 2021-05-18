//
//  TextEx3.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 13.05.2021.
//

import SwiftUI

struct TextEx3: View {
    @State private var space = 10.0
    var body: some View {
        VStack(spacing:20){
            Text("Text Örnek 3").font(.largeTitle)
            Text("deneme: \(Int(space))")
            Slider(value: $space,in:1...30).padding(.horizontal)
            Text("linespacing değeri birden fazla satırdan oluşan text nesnelerinin satırları arasında bırakılacak olan boşluğu ayarlar.").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).background(Color.black).foregroundColor(.white).lineSpacing(CGFloat(space)).frame(maxHeight:200)
            Text("SwiftUI ile uygulamnaların görünümünü oluşturmak daha kolay hale gelebilir.").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).frame(maxWidth:.infinity).background(Color.purple).multilineTextAlignment(.trailing)
        }
    }
}

struct TextEx3_Previews: PreviewProvider {
    static var previews: some View {
        TextEx3()
    }
}
