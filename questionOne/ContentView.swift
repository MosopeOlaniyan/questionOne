//
//  ContentView.swift
//  questionOne
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = "pick an answer!"
    var body: some View {
        
        NavigationStack {
           
            ZStack {
                
                
                Color(red: 56/255, green: 164/255, blue: 255/255).ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination: questionTwo()) {
                        Text("click if you got question one correct :)").tint(.black)
                                      }
                            Text("  Question One:").font(.system(size: 40, weight: .bold))
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                            Text("When was the United Nation").font(.system(size: 30, weight: .semibold))
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Text("founded?").font(.system(size: 30, weight: .semibold))
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    
                    
                    Image("un")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).cornerRadius(37)
                    
                        .navigationTitle("Questions!")
                        .navigationBarTitleDisplayMode(.automatic)
                        .navigationBarHidden(true)
         
                    
                          //  Spacer()
                    
                    Button("1945") {
                        answer = "correct!"
                    }.tint(.black).font(.system(size: 50, weight: .semibold))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
                    Button("1930") {
                     answer = "try again :( "
                    }.tint(.black).font(.system(size: 50, weight: .semibold))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
                    
                    Button("2010") {
                        answer = "nuh uh uh"
                    }.tint(.black).font(.system(size: 50, weight: .semibold))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
                    
                    Text(answer)
                                
                        
                    }
                }
            }
        }
    }
    
    
    
    
    
    
      #Preview {
        ContentView()
    }
    

