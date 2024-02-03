//
//  ContentView.swift
//  Calculator
//
//  Created by 유민기 on 2024/01/27.
//

import SwiftUI

enum ButtonType: String{
    case first, second, third, forth, fifth, sixth, seventh, eighth, nineth, zero
    case dot, equal, plus, minus, multiple, devide
    case percent, opposite, clear
    
    var ButtonDisplayName: String{
        switch self{
        case .first :
            return "1"
        case .second:
            return "2"
        case .third:
            return "3"
        case .forth:
            return "4"
        case .fifth:
            return "5"
        case .sixth:
            return "6"
        case .seventh:
            return "7"
        case .eighth:
            return "8"
        case .nineth:
            return "9"
        case .zero:
            return "0"
        case .dot:
            return "."
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiple:
            return "x"
        case .devide:
            return "÷"
        case .percent:
            return "%"
        case .opposite:
            return "+/-"
        case .clear:
            return "c"
        }
    }
    var backgrandColor: Color{
        switch self{
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, . nineth, .zero, .dot:
            return Color("NumberButton")
        case .equal, .plus, .minus, .multiple, .devide:
            return Color.orange
        case .percent, .opposite, .clear:
            return Color.gray
        }
    }
    
    var forgroundClor: Color{
        switch self{
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, . nineth, .zero, .dot, .equal, .plus, .minus, .multiple, .devide:
            return Color.white
        case .percent, .opposite, .clear:
            return Color.black
        }
    }
}

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    @State var tempNumber: Int = 0 //숫자를 저장할 공간
    @State var opperatorType: ButtonType = .clear
    
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite, .percent, .devide],
        [.seventh,.eighth, .nineth, .multiple],
        [.forth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .dot, .equal],
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
                        ForEach(line, id: \.self){ item in
                            Button{
                                if totalNumber == "0"{
                                    if item == .clear{
                                        totalNumber = "0"
                                    } else if   item == .opposite ||
                                                item == .percent ||
                                                item == .plus ||
                                                item == .minus ||
                                                item == .multiple ||
                                                item == .devide ||
                                                item == .equal{
                                        totalNumber = "Error"
                                    }
                                    else{
                                        totalNumber = item.ButtonDisplayName
                                    }
                                } else if totalNumber == "Error" {
                                    if item == .clear{
                                        totalNumber = "0"
                                    }
                                } else {
                                    if item == .clear{
                                        totalNumber = "0"
                                    }
                                    else if item == .plus{
                                        // 1. 숫자를 저장
                                        // 2. 저장한 숫자를 더한다.
                                        // 3. 남은 숫자를 초기화 한다.
                                        tempNumber = Int(totalNumber) ?? 0 //플러스를 눌렀을 때 입력한 숫자를 tempNumber에 저장한다 만약 숫자가 아니라면 0이 출력되게 한다.
                                        opperatorType = .plus
                                        totalNumber = "0" // 남은 숫자를 0으로 초기화한다. 이걸 안하면 플러스 버튼을 누르고 다음 버튼을 눌렀을 때 덧붙여지기 때문이다.
                                    }
                                    else if item == .minus{
                                        tempNumber = Int(totalNumber) ?? 0
                                        opperatorType = .minus
                                        totalNumber = "0"
                                    }
                                    else if item == .equal{
                                        if opperatorType == .plus{
                                            totalNumber = String((Int(totalNumber) ?? 0) + tempNumber)
                                        }
                                        else if opperatorType == .minus{
                                            totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))
                                        }
                                    }
                                    else{
                                        totalNumber += item.ButtonDisplayName
                                    }
                                }
                            } label:{
                                Text(item.ButtonDisplayName)
                                    .frame(width: item == .some(.zero) ? 160 : 80, height: 80)
                                    .background(item.backgrandColor)
                                    .cornerRadius(40)
                                    .foregroundColor(item.forgroundClor)
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
