//
//  SliderEx3.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SliderEx3: View {
    @State private var selectedValue = 0.5
    var body: some View {
        VStack(spacing:25){
            Text("Slider Örnek 3").font(.largeTitle)
            HStack{
                Image(systemName: "tortoise")
                Slider(value: $selectedValue)
                Image(systemName: "tortoise")
            }.foregroundColor(.green).padding()
            HStack{
                Image(systemName: "speaker.fill")
                Slider(value: $selectedValue)
                Image(systemName: "speaker.fill")
            }.foregroundColor(.accentColor).padding()
            VStack{
                Slider(value: $selectedValue).accentColor(.orange)
                HStack{
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }.padding().foregroundColor(.orange)
            }
            
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct SliderEx3_Previews: PreviewProvider {
    static var previews: some View {
        SliderEx3()
    }
}
