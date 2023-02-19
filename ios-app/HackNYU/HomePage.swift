//
//  HomePage.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/18/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView{
            
            Image("DB").resizable()
                .frame(width: 255, height: 255).position(x:180,y: 150).padding()
            /** The Mini Box, and doesn't work as well*/
          /*  GroupBox{
                VStack(alignment: .leading){
                    Text("Current Pooled Balance").font(.headline)
                    GroupBox{
                        Text("abcd")
                    }
                }
            } */
            /** The Current Pooled Balance*/
            GroupBox(
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding()
            GroupBox(
                        label: Label("Chase Account Balance", systemImage: "chart.bar")
                            .foregroundColor(.blue)
                    ) {
                        Text("$"+"100")
                    }.padding().position(x:197,y:25)
            GroupBox(
                        label: Label("Bank of America", systemImage: "dot.radiowaves.forward")
                            .foregroundColor(.red)
                    ) {
                        Text("$"+"600")
                    }.padding().position(x:197,y:-3)
            GroupBox(
                        label: Label("Capital One", systemImage: "chart.bar")
                            .foregroundColor(.gray)
                    ) {
                        Text("$"+"1400")
                    }.padding().position(x:197,y:-33)
            
            /** The heart Stuff can be used to add more types of things */
            
            LazyVGrid(columns: [.init(), .init()]) {
                            ForEach(0..<4) { _ in
                                GroupBox(
                                    label: Label("Transaction", systemImage: "bolt")
                                        .foregroundColor(.red)
                                ) {
                                    Text("Transaction Update: Avg weekly expence increasing")
                                }
                            }
            }
            
            
            
        }.navigationTitle("MoneyMan").bold()

        
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
