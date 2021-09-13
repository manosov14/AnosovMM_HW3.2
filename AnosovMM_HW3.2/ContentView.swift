//
//  ContentView.swift
//  AnosovMM_HW3.2
//
//  Created by Михаил on 10.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var redSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
            VStack {                
                ColorView(
                    redSliderValue: $redSliderValue,
                    blueSliderValue: $blueSliderValue,
                    greenSliderValue: $greenSliderValue
                )
                SliderView(sliderValue: $redSliderValue, color: .red)
                SliderView(sliderValue: $greenSliderValue, color: .green)
                SliderView(sliderValue: $blueSliderValue, color: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
