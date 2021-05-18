//
//  StepperEx3.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct StepperEx3: View {
    @State private var star = 1
    @State private var value = 25
    var body: some View {
        VStack(spacing:20){
            Text("Stepper Örnek-3").font(.largeTitle)
            Text("Stepper Değer Aralığı").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Stepper(value: $star,in:1...5, label: {
                Text("Puanını ver : \(star)")
            }).padding()
            HStack{
                ForEach(1...star, id:\.self){star in
                    Image(systemName: "star.fill").font(.largeTitle).foregroundColor(.yellow
                    )
                }
            }
            Stepper(value: $star, label: {
                Text("Custom Stepper").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.vertical)
            }).padding(.horizontal).background(Color.blue)
            Stepper(value: $value,in:0...100, label: {
                Image(systemName: "circle.lefthalf.fill")
                Text("\(value)/100")
            }).padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
            HStack{
                Text("Sadece Stepper Renkli")
                Spacer()
                Stepper("",value:$value).frame(width:95,height: 35).padding(.trailing,10).background(Color(UIColor.systemTeal)).cornerRadius(10)
                
            }.padding()
            
        }
    }
}

struct StepperEx3_Previews: PreviewProvider {
    static var previews: some View {
        StepperEx3()
    }
}
