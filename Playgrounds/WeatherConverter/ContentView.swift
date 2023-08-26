import SwiftUI

struct ContentView: View {
    @State private var fahrenheitValue = ""
    @State private var celsiusValue = ""
    
    var body: some View {
            VStack(alignment: .center) {
                Text("Weather Converter")
                    .font(.title)
                
                Spacer() 
                
                Text("\(celsiusValue) °C")
                    .font(.title2)
                
                Spacer()
                
                HStack {
                    TextField("Fahrenheit Value", text: $fahrenheitValue)
                        .keyboardType(.decimalPad)
                    
                    Spacer()
                    
                    Button("Convert", action: convertToCelsius)
                        .foregroundColor(.accentColor)
                }
            .padding()
        }
    }
    
    func convertToCelsius() {
        if let fahrenheit = Double(fahrenheitValue) {
            let celsius = (fahrenheit - 32) * 5 / 9
            celsiusValue = String(format: "%.2f", celsius) 
        } else {
            celsiusValue = "Invalid input"
        }
    } 
}
