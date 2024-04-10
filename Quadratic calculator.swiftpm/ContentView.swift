import SwiftUI

struct ContentView: View {
    
    @State var input: Double?
    @State var solution1: String = "Result"
    @State var solution2: String = "Result"
    @State var aValue: Double?
    @State var bValue: Double?
    @State var cValue: Double?
    
    var body: some View {
        ZStack {
            Color.black
            VStack{
                HStack{
                    TextField("Enter a", value: $aValue, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .onSubmit {
                            
                        }
                    TextField("Enter b", value: $bValue, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .onSubmit {
                            
                        }
                    TextField("Enter c", value: $cValue, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .onSubmit {
                            
                        }
                }
                Button(action: {
                    calculateQuadratic()
                }, label: {
                    Text("Calculate")
                        .frame(width: 200, height: 80)
                        .foregroundColor(.primary)
                        .background(Capsule().foregroundColor(.white))
                })
                
                
                Text("Quadratic formula")
                    .foregroundColor(.white)
                Text("-b +/- √(b^2 - 4(a)(c) \n /2")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("\(solution1)")
                    .foregroundColor(.white)
                    .padding()
                Text("\(solution2)")
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .font(.largeTitle)
        }
        
    }
    func calculateQuadratic(){
        
        let a = aValue ?? 0
        let b = bValue ?? 0
        let c = cValue ?? 0
//        guard let a = aValue else { return }
//        if let a = aValue {
//            
//        }
        let equation1 = ((-1 * b) - (sqrt((b * b) - 4 * a * c)))/(2 * a)        
        let equation2 = ((-1 * b) + (sqrt((b * b) - 4 * a * c)))/(2 * a)
        
        solution1 = "Result \(equation1)"
        solution2 = "Result \(equation2)"
    }
}
