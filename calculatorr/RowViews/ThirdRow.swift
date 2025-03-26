//
//  ThirdRow.swift
//  calculatorr
//
//

import SwiftUI

struct ThirdRow: View {
    
    @Binding var text3: String
    
    var body: some View {
        HStack(spacing:1) {

            NumberBox(number: "4", text: $text3)
            NumberBox(number: "5", text: $text3)
            NumberBox(number: "6", text: $text3)
            NumberBox(number: "-", text: $text3)
        }
    }
}

#Preview {
    @Previewable @State var previewText: String = ""
    ThirdRow(text3: $previewText)
}
