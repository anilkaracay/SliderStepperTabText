//
//  TextFieldEx5.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 17.05.2021.
//

import SwiftUI

struct TextFieldEx5: View {
    @State private var txtData = ""
    var body: some View {
        VStack(spacing:20){
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(.gray)
                    TextField("Adınız",text:$txtData)
                    Image(systemName: "slider.horizontal.3")
                }.padding(.horizontal)
                Divider()
            }
            HStack{
                Image(systemName: "envelope").foregroundColor(.gray).font(.headline)
                TextField("Email Adresiniz",text:$txtData)
            }.padding().overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1)).padding()
            
            HStack{
                TextField("Ülkeniz",text:$txtData)
                Button(action: {}, label: {
                    Image(systemName: "chevron.right").padding(.horizontal)
                }).accentColor(.orange)
            }.padding().overlay(Capsule().stroke(Color.gray,lineWidth: 1)).padding(.horizontal)
           
        }
    }
}

struct TextFieldEx5_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldEx5()
    }
}
