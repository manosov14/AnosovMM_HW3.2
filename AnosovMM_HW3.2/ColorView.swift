//
//  ColorView.swift
//  AnosovMM_HW3.2
//
//  Created by Михаил on 13.09.2021.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var redSliderValue: Double
    @Binding var blueSliderValue: Double
    @Binding var greenSliderValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 300, height: 150)
            . padding()
            .foregroundColor(Color(red: redSliderValue / 255, green: greenSliderValue / 255, blue: blueSliderValue / 255))
    }
}
