//
//  ContentView.swift
//  Calculator
//
//  Created by 유민기 on 2024/01/27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
    private let buttonData: [[String]] = [
        ["C", "/", "%", "$"],
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="],
    ]
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .font(.system(size: 73))
                        .foregroundColor(.white)
                }
                
                ForEach(buttonData, id: \.self){ line in
                    HStack{
                        ForEach(line, id: \.self){ row in
                            Button{
                                if totalNumber == "0"{
                                    totalNumber = "1"
                                } else {
                                    totalNumber += "1"
                                }
                            } label:{
                                Text(row)
                                    .frame(width: 80, height: 80)
                                    .background(.gray)
                                    .cornerRadius(40)
                                    .foregroundColor(.black)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
