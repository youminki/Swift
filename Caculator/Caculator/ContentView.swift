//
//  ContentView.swift
//  Calculator
//
//  Created by 유민기 on 2024/01/27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
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
                HStack{
                    Button{
                        totalNumber = "0"
                    } label: {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Text("+/-")
                        .frame(width: 80, height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size: 33))
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "%"
                        } else {
                            totalNumber += "%"
                        }
                    } label:{
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "÷"
                        } else {
                            totalNumber += "÷"
                        }
                    }label: {
                            Text("÷")
                                .frame(width: 80, height: 80)
                                .background(.orange)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                        }
                }
                HStack{
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "7"
                        } else{
                            totalNumber += "7"
                        }
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "8"
                        } else{
                            totalNumber += "8"
                        }
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "9"
                        } else{
                            totalNumber += "9"
                        }
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "x"
                        } else{
                            totalNumber += "x"
                        }
                    } label: {
                        Text("x")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "4"
                        } else{
                            totalNumber += "4"
                        }
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "5"
                        } else{
                            totalNumber += "5"
                        }
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "6"
                        } else{
                            totalNumber += "6"
                        }
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "-"
                        } else{
                            totalNumber += "-"
                        }
                    } label: {
                        Text("-")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "1"
                        } else{
                            totalNumber += "1"
                        }
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "2"
                        } else{
                            totalNumber += "2"
                        }
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "3"
                        } else{
                            totalNumber += "3"
                        }
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "+"
                        } else{
                            totalNumber += "+"
                        }
                    } label: {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "00"
                        } else{
                            totalNumber += "0"
                        }
                    } label: {
                        Text("0")
                            .frame(width: 160, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "."
                        } else {
                            totalNumber += "."
                        }
                    } label:{
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "="
                        } else {
                            totalNumber += "="
                        }
                    }label:{
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
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
