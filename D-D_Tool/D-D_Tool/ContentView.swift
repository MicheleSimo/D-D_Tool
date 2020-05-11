//
//  ContentView.swift
//  D-D_Tool
//
//  Created by Michele Simonetti on 26/04/2020.
//  Copyright © 2020 Michele Simonetti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AddSession()
    }
}



struct AddSession:View{
    
    var body:some View{
        
        VStack(spacing:10){
            
            Text("SESSION").font(Font.custom("Quotes Caps", size: 31))
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                Text("Session 1")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                Text("Session 2")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
            HStack{
                
                Image(systemName: "plus")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                Text("Add Session")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
        }
        
    }
    
}
struct AddCharacter:View{
    
    var body:some View{
        
        VStack(spacing:10){
            
            Text("Characters").font(Font.custom("Quotes Caps", size: 31))
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                VStack{
                    Text("Hiring").foregroundColor(Color.white)
                    Text("HP 15/15").foregroundColor(Color.white)
                }
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                
                VStack{
                    Text("Rayne x20").foregroundColor(Color.white)
                    Text("HP 15/15").foregroundColor(Color.white)
                }
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
            HStack{
                
                Image(systemName: "plus")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                Text("Add Character")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
        }
        
    }
    
}
struct Trading:View{
    
    @State var trigger:Bool = false
    
    var body:some View{
        
        VStack{
            
            Text("TRADING").font(Font.custom("Quotes Caps", size: 31))
            Text("Player 1")
            
            VStack{
                
                HStack(spacing:15){
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                     .background(RoundedRectangle(cornerRadius: 10))
                    
                    Button(action: {}) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                     .background(RoundedRectangle(cornerRadius: 10))
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                     .background(RoundedRectangle(cornerRadius: 10))

                    
                }
                
                
                
                HStack(spacing:15){
                    
                    Button(action:{
                        self.trigger.toggle()
                    }) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                        .background(self.trigger ? Color.green : Color.gray)
                        .cornerRadius(10)
                       
                    
                    Button(action: {}) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                     .background(RoundedRectangle(cornerRadius: 10))
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "star.fill")
                    }.frame(width:60,height: 60)
                     .background(RoundedRectangle(cornerRadius: 10))

                    
                }
                
                ZStack{
                    Image("Image-1")
                    Image("Image")
                }
                
                Text("Player 2")
                
            }
            
        }
        
    }
    
}
struct BackPack:View{
    
    @State private var search = ""
    
    var body:some View{
        
        VStack{
            
            //Qui ci devo mettere strumenti di ricerca
            HStack{
                
                ZStack{
                    
                    GeometryReader{geo in
                        
                        Text("Filter").background(Color.black).foregroundColor(Color.white)
                        
                    }.background(Color.red)
                    
                }
                
                ZStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "magnifyingglass").resizable()
                            .frame(width:30,height: 30)
                    }.padding(.trailing,130)

                    
                    TextField("", text: $search)
.keyboardType(UIKeyboardType.alphabet)
                        .frame(width:170,height: 40)
                    .overlay(Capsule().stroke(Color.gray, lineWidth: 1))
                    
                }
                
            }
            
        }
        
    }
    
}
struct LoginView:View{
    
    @State var text1 = ""
    @State var text2 = ""
    
    var body:some View{
        
        VStack(spacing:40){
            
            VStack(spacing:30){
                
                TextField("Username", text: $text1)
                .overlay(
RoundedRectangle(cornerRadius: 8)
.stroke(Color.orange, lineWidth: 2)
                    .frame(width:390,height:33)
)
                TextField("Password", text: $text2)
                .overlay(
RoundedRectangle(cornerRadius: 8)
    .stroke(Color.orange, lineWidth: 2).frame(width:390,height:33)
)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Press")
                }.frame(width:200,height: 20)
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2).frame(width:100,height:33)
                )
                
            }.padding()
            
            HStack{
                
               Text("Do you have not an account?")
                Text("Register").foregroundColor(.blue)
                
            }.padding()
            
            HStack(spacing:50){
                Image("FB").resizable().frame(width:40,height:40)
                Image("Gmail").resizable().frame(width:40,height:40)
                
            }
            
        }
        
    }
}
struct Players:View{
    
    var body:some View{
        
        VStack(spacing:55){
            
            Text("PLAYERS").font(.title)
            
            VStack(spacing:30){
                
                HStack(spacing:40){
                    
                    VStack(spacing:10){
                        Image("Image-2").resizable().frame(width:65,height: 65)
                        Text("Player1")
                    }
                    VStack(spacing:10){
                        Image("Image-3").resizable().frame(width:65,height: 65)
                        Text("Player2")
                    }
                    
                }
                
                HStack(spacing:40){
                    
                    VStack(spacing:10){
                        Image("Image-4").resizable().frame(width:65,height: 65)
                        Text("Player3")
                    }
                    VStack(spacing:10){
                        Image("Image-5").resizable().frame(width:65,height: 65)
                        Text("Player4")
                    }
                    
                }
                
                VStack(spacing:10){
                    Image("Image-6").resizable().frame(width:65,height: 65)
                    Text("Player5")
                }
                
            }
            
        }
        
    }
    
}
//struct InfoObject:View{
//
//    var body:some View{
//
//        VStack(spacing:10){
//
//            Text("Throwing object")
//
//
//            ZStack{
//
//                RoundedRectangle()
//                .stroke(Color.black, lineWidth: 2)
//                .frame(width:450,height:600)
//
//                VStack {
//                    HStack {
//                        Image("Knife").overlay(
//                        RoundedRectangle(cornerRadius: 8)
//                        .stroke(Color.orange, lineWidth: 2)
//                                            .frame(width:230,height:230)
//                        )
//                        VStack{
//
//                        }
//                    }
//                }
//            }
//        }
//
//    }
//
//}
struct Equipment:View{
    
    @State private var upAppear:Bool = false
    @State private var middleAppear:Bool = false
    @State private var centreAppear:Bool = false
    @State private var downAppear:Bool = false
    
    var body:some View{
        
        VStack(spacing:30){
            
            Text("Equipment").fontWeight(.black)
                    
            ZStack{
                
                Circle()
                .fill(Color.blue)
                .frame(width: 125, height: 125)
                
                Rectangle().stroke(lineWidth: upAppear ? 3 : 0)
                    .frame(width:140,height: 140)
                
            }
                    
                    HStack{
                        
                        ZStack{
                            
                            Rectangle()
                            .fill(Color.red)
                                .frame(width: 50, height: 150)
                            .rotationEffect(.degrees(45)).offset(x:-40,y:-30)
                            
                            Rectangle().stroke(lineWidth: centreAppear ? 3 : 0)
                            .frame(width:110,height: 110)
                            
                        }
                        
                        ZStack{
                            
                            Rectangle()
                            .fill(Color.red)
                                .frame(width: 110, height: 240)
                            
                            Rectangle().stroke(lineWidth: middleAppear ? 3 : 0)
                            .frame(width:130,height: 130)
                            
                        }
                        
                        ZStack{
                            
                            Rectangle()
                            .fill(Color.red)
                                .frame(width: 50, height: 150)
                            .rotationEffect(.degrees(-45)).offset(x:40,y:-30)
                            
                            Rectangle().stroke(lineWidth: centreAppear ? 3 : 0)
                            .frame(width:110,height: 110)
                            
                        }
                        
                    }
            
            ZStack{
                
                HStack{
                    
                    Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 150)
                    
                    Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 150)
                    
                }
                
                Rectangle().stroke(lineWidth: downAppear ? 3 : 0)
                .frame(width:155,height: 155)
                
            }
                    
                    
            
            HStack(spacing:30){
                
                Rectangle()
                    
                    .frame(width:50,height: 40)
                    .cornerRadius(15)
                    .onTapGesture (count:1,perform: {
                        self.upAppear.toggle()
                    }).animation(.default)
                    
                    
                
                Rectangle()
                .frame(width:50,height: 40)
                .cornerRadius(15)
                .onTapGesture (count:1,perform: {
                    self.middleAppear.toggle()
                    self.centreAppear.toggle()
                }).animation(.default)
                
                Rectangle()
                .frame(width:50,height: 40)
                .cornerRadius(15)
                .onTapGesture (count:1,perform: {
                    self.downAppear.toggle()
                }).animation(.default)
                
            }
                    
        }
        
    }
    
}
struct Categories:View{
    
    var body:some View{
        
        VStack(spacing:10){
            
            Text("SESSION").font(Font.custom("Quotes Caps", size: 31))
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                HStack {
                    Text("Weapons")
                        .frame(width:300,height: 100)
                        .background(Color.green)
                    Text("150 Items")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                }
                
            }
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                HStack {
                    Text("Helmets")
                        .frame(width:300,height: 100)
                        .background(Color.green)
                    Text("25 Items")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                }
                
            }
            
            HStack{
                
                Image(systemName: "plus")
                    .foregroundColor(Color.white)
                    .frame(width:100,height: 100)
                .background(RoundedRectangle(cornerRadius: 20))
                Text("Add Category")
                    .frame(width:300,height: 100)
                    .background(Color.green)
                
            }
            
        }
        
    }
    
}

//struct CategorySetting:View{
//
//    var body:some View{
//
//
//
//    }
//
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
