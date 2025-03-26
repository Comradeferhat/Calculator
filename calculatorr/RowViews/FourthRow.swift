//
//  FourthRow.swift
//  calculatorr
//

import SwiftUI

struct FourthRow: View {
    
    @Binding var text4: String
    
    var body: some View {
        
        HStack(spacing:1) {
            
            NumberBox(number: "7", text: $text4)
            NumberBox(number: "8", text: $text4)
            NumberBox(number: "9", text: $text4)
            NumberBox(number: "*", text: $text4)
        }
    }
}

#Preview {
    
    @Previewable @State var previewText: String = ""
    FourthRow(text4: $previewText)
}
