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
            GroupBox{
                VStack(alignment: .leading){
                    Text("Current Pooled Balance").font(.headline)
                    GroupBox{
                        Text("abcd")
                    }
                }
            }
            /** The Current Pooled Balance*/
            GroupBox(
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding()
            GroupBox(
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding().position(x:197,y:25)
            GroupBox(
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding().position(x:197,y:-3)
            GroupBox(
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding().position(x:197,y:-33)
            
            /** The heart Stuff can be used to add more types of things */
            
            LazyVGrid(columns: [.init(), .init()]) {
                            ForEach(0..<10) { _ in
                                GroupBox(
                                    label: Label("Heart Rate", systemImage: "heart.fill")
                                        .foregroundColor(.red)
                                ) {
                                    Text("Your hear rate is 90 BPM.")
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
