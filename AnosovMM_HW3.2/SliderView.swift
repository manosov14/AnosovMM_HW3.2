//
//  SliderView.swift
//  AnosovMM_HW3.2
//
//  Created by Михаил on 11.09.2021.
//

import SwiftUI

struct SliderView: View {
    
    @State private var textValue = ""
    @State private var alertPresented = false
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 35,
                       alignment: .leading
                )
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            TextField("", text: $textValue, onEditingChanged: { (changed) in
                print("Username onEditingChanged - \(changed)")
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 60)
        }
        .padding(.horizontal)
    }
    
    private func checkUserName() {}
    
    private func setColor(color: Color) {}
}

