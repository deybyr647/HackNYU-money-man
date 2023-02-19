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
            GroupBox{
                VStack(alignment: .leading){
                    Text("Current Pooled Balance").font(.headline)
                    GroupBox{
                        Text("abcd")
                    }
                }
            }
            GroupBox( 
                        label: Label("Current Pooled Balance", systemImage: "chart.bar")
                            .foregroundColor(.green)
                    ) {
                        Text("$"+"2100")
                    }.padding()
            
        }
        
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
