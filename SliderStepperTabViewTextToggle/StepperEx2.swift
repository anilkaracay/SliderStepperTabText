//
//  StepperEx2.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct StepperEx2: View {
    @State private var age = 1
    var body: some View {
        VStack(spacing:20){
            Text("Stepper Örnek 2").font(.largeTitle)
            Text("Stepper Label İlişkisi").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Stepper(value: $age, label: {
                Text("Yaşınız Kaç: \(age)")
            }).padding(.horizontal)
            Text("Label olmadan stepper kullanımı").foregroundColor(.green).font(.title3)
            Stepper(value:$age){
                Text("")
            }.padding(.horizontal)
            Text("Label Gizli").foregroundColor(.purple)
            Stepper(value:$age){
                Text("")
            }.labelsHidden()
            Text("Stepper nesnesi solda").foregroundColor(.red)
            HStack{
                Stepper(value: $age, label: {
                    Text("")
                }).labelsHidden()
                Spacer()
            }.padding(.horizontal)
            
        }
    }
}

struct StepperEx2_Previews: PreviewProvider {
    static var previews: some View {
        StepperEx2()
    }
}
