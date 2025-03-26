//
//  NumberBox.swift
//  calculatorr


import SwiftUI

struct NumberBox: View {
    
    var number: String
    @Binding var text: String
    
    var body: some View {
        
            
        Button(action: { if number == "=" {
            calculateResult()
        } else if number == "C"{
            text = String(text.dropLast())
        } else if number == "AC" {
            text = ""
        }else if number == "%" {
            text = String(Double(text)! / 100)
        }
          else {
            text += number
        }
        })
        {
                ZStack {
                Rectangle().cornerRadius(50).frame(width: 85,height: 85).foregroundColor(.green)
                    
                    Text(number)
                        .font(.largeTitle)
                        .foregroundColor(.white)
            }
        }
    }
    
    func calculateResult() {
        let expression = NSExpression(format: text)
        
        if let result = expression.expressionValue(with: nil, context: nil) as? Double {
            text = String(result)
        }else {
            text = "Error"
        }
    }
    
}

#Preview {
    @Previewable @State var previewText: String = ""
    NumberBox(number: "4", text: $previewText)
}
