//
//  TextEx1.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 13.05.2021.
//

import SwiftUI

struct TextEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Text Örnek-1").font(.largeTitle)
            Text("Wrapping").font(.title).foregroundColor(.gray)
            Text("Text View read only metinler oluşturmak için kullan ılır. eğer değiştirmezseniz varsayılan ayarlarda tüm içeriğini görüntüleyecek şekilde belirli bir yere kadar boyutlraını ayarlar. Eğer bu boyutları satır bazlı sınırlandırmak isterseniz linelimit fonk kullanmalısınız. Eğer yazının içeriği belirtilen limit satır sayısını aşıyorsa geri kalanı ... şeklinde görüntülenir.").frame(maxWidth:.infinity).background(Color.blue).foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Text("Bugün okula gidip gitmeyeveğime karar vermedim henüz.").padding(.horizontal).lineLimit(3)
            
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct TextEx1_Previews: PreviewProvider {
    static var previews: some View {
        TextEx1()
    }
}
