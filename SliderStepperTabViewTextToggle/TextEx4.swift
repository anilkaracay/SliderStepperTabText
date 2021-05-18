//
//  TextEx4.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 13.05.2021.
//

import SwiftUI

struct TextEx4: View {
    var body: some View {
        VStack(spacing:10){
            Text("Text Truncate İşlemi ")
            Text("Hiçkimse asla baştan başlayamaz en azından benim deneyimlerime göre").padding(.horizontal).lineLimit(1).truncationMode(.middle)
            
            Spacer()
            Text("Birden fazla text nesnesi ") + Text("artı işaretiyle ").bold().foregroundColor(.red) + Text("birleştirilip tek bir ") + Text("Text view nesenei").font(.title).underline() + Text("Şeklinde kullanılabilir.")
            
            
        }
    }
}

struct TextEx4_Previews: PreviewProvider {
    static var previews: some View {
        TextEx4()
    }
}
