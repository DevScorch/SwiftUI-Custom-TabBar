//
//  ContentView.swift
//  SwiftUI Custom TabBar
//
//  Created by Johan on 31/10/2020.
//

import SwiftUI
struct ContentView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        ZStack {
            Color(red: 245/255, green: 245/255, blue: 249/255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    if self.viewRouter.currentView == "home" {
                        Text("Home")
                    } else if self.viewRouter.currentView == "agenda" {
                        Text("Agenda")
                    } else if self.viewRouter.currentView == "invoice" {
                        Text("Invoice")
                    } else if self.viewRouter.currentView == "timer" {
                        Text("Timer")
                    }
                    Spacer()
                    HStack {
                        Image("home-silver").frame(width: 24, height: 24)
                            
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/4, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "home"
                            }
                        Image("calendar-silver")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/4, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "agenda"
                            }
                        Image("invoice-silver")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/4, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "invoice"
                            }
                        Image("stopwatch-silver")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/4, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "timer"
                            }
                    }
                    .background(Color(red: 19/255, green: 18/255, blue: 88/255))
                    
                    .frame(width: geometry.size.width, height: geometry.size.height/10)
                    
                    
                }
                
            }.edgesIgnoringSafeArea(.bottom)
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
