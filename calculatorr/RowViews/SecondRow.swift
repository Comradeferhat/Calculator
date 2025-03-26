//
//  SecondRow.swift
//  calculatorr
//

import SwiftUI

struct SecondRow: View {
    
    @Binding var text2: String
    
    var body: some View {
        
        HStack(spacing: 1){
            
            NumberBox(number: "1", text: $text2)
            NumberBox(number: "2", text: $text2)
            NumberBox(number: "3", text: $text2)
            NumberBox(number: "+", text: $text2)
            
        }
    }
}

#Preview {
    @Previewable @State var previewText: String = ""
    SecondRow(text2: $previewText)
}
