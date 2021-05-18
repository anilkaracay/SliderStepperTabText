//
//  TextFieldEx4.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx4: View {
    @State private var txtData = ""
    var body: some View {
        VStack(spacing:20){
            Text("TextField Örnek 4").font(.largeTitle)
            Text("Custom Place Holder").font(.title).foregroundColor(.gray)
            
            ZStack(alignment:.leading){
                if txtData.isEmpty{
                    Text("Adınızı giriniz").bold().foregroundColor(Color(.systemGreen))
                }
                TextField("",text:$txtData).foregroundColor(.red).font(Font.system(size: 18,  design: .rounded))
            }.padding(.init(top: 4, leading: 10, bottom: 4, trailing: 10)).overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange,lineWidth: 2)).padding()
            
            ZStack(alignment:.leading){
                if txtData.isEmpty{
                    Text("Email adresinizi giriniz").italic().foregroundColor(Color(.systemIndigo)).opacity(0.5)
                }
                TextField("",text:$txtData)
            }.padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10)).overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange,lineWidth: 3)).padding(.horizontal)
        }
    }
}

struct TextFieldEx4_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx4()
    }
}
