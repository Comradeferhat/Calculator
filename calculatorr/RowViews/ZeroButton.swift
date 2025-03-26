//
//  ZeroButton.swift
//  calculatorr
//
//  on 23.03.2025.
//

import SwiftUI

struct ZeroButton: View {
    
    var number: String
    @Binding var text: String
    
    var body: some View {
        Button(action: {text += number}) {
            ZStack {
                Rectangle().cornerRadius(50).frame(width: 170,height: 85).foregroundColor(.green)
                
                Text(number)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    @Previewable @State var previewText: String = ""
    ZeroButton(number: "0", text: $previewText)
}
