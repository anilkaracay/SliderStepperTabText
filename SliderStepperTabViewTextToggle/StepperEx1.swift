//
//  StepperEx1.swift
//  SliderStepperTabViewTextToggle
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct StepperEx1: View {
    @State private var valueStepper = 1
    @State private var values = [0,1]
    var body: some View {
        VStack(spacing:20){
            Text("Stepper Örnek 1").font(.largeTitle)
            Stepper(value: $valueStepper, label:
                        {Text("Seçtiğiniz değer: \(valueStepper)")}
                    
            ).padding(.horizontal)
            Divider()
            Image(systemName: "bolt.fill").font(.largeTitle).foregroundColor(.yellow)
            Text("Arttırma ve azaltma işlemlerini manuel yapabilirsiniz").foregroundColor(.red)
            Stepper(
                onIncrement: {self.values.append(self.values.count)},
                onDecrement: {self.values.removeLast()},
                label: {
                    Text("Arttırma ve Azaltma İşlemleri")
                }).padding(.horizontal)
            
            HStack{
                ForEach(values, id: \.self){value in
                    Image(systemName: "\(value)circle.fill")
                    
                }.font(.largeTitle).foregroundColor(.red)
            }
            
        }
    }
}

struct StepperEx1_Previews: PreviewProvider {
    static var previews: some View {
        StepperEx1()
    }
}
