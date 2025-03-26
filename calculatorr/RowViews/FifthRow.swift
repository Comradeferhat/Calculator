//
//  FifthRow.swift
//  calculatorr
//

import SwiftUI

struct FifthRow: View {
    
        @Binding var text5: String
    
    var body: some View {
        
        HStack(spacing: 1){
        
            NumberBox(number: "C", text: $text5)
            NumberBox(number: "AC", text: $text5)
            NumberBox(number: "%", text: $text5)
            NumberBox(number: "/", text: $text5)
        }
    }
}
#Preview {
    @Previewable @State var previewText: String = ""
    FifthRow(text5: $previewText)
}
