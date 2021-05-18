//
//  TextEx5.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextEx5: View {
    var body: some View {
        VStack(spacing:25){
            Text("IOS Programlama").underline() +
                Text(" SwiftUI").font(.largeTitle).fontWeight(.light).foregroundColor(.blue) + Text(" Viewler").underline()
            
            
            Text("IOS Programlama").underline() +
                Text(" SwiftUI").font(.largeTitle).fontWeight(.light).foregroundColor(.blue).underline().baselineOffset(40) + Text(" Viewler").underline()
            
            Text("Bu yazı çok yüksek öncelik değerine sahip.İçeriğinin mutlaka kullanıcı tarafından görülmesi gerekiyor. Ayarlamalarını buna göre yap lütfen.").font(.title).frame(maxWidth:.infinity).padding().background(Color.green).layoutPriority(2)
            
            Text("Avenir Next Regular").font(Font.custom( "Avenir Next", size: 26))
            Text("Gill Sans").font(Font.custom("Gill Sans",size:22))
        }
    }
}

struct TextEx5_Previews: PreviewProvider {
    static var previews: some View {
        TextEx5()
    }
}
