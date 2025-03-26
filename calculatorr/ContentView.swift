//
//  ContentView.swift
//  calculatorr
//
//  Created by E3<F on 23.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State  var text: String = ""
    
    var body: some View {
       
        VStack {
        
        TextField("NUM", text: $text) {
            print(text)
        }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.system(size: 45))
            .padding(.top, 250.0)
            .padding(.leading, 25)
        
        
            
            VStack{
                Spacer()
                FifthRow(text5: $text)
                FourthRow(text4: $text)
                ThirdRow(text3: $text)
                SecondRow(text2: $text)
                FirstRow(text1: $text)
            }
        }
    }
}

#Preview {
    ContentView()
}
