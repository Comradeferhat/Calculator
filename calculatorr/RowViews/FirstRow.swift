//
//  FirstRow.swift
//  calculatorr
//

import SwiftUI

struct FirstRow: View {
    
    @Binding var text1: String
    
    var body: some View {
        
        HStack {
            ZeroButton(number: "0", text: $text1)
            NumberBox(number: ".", text: $text1)
            NumberBox(number: "=", text: $text1)
        }
    }
}
#Preview {
    @Previewable @State var previewText: String = ""
    FirstRow(text1: $previewText)
}
