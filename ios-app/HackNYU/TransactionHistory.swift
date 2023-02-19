//
//  TransactionHistory.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/19/23.
//

import SwiftUI

struct TransactionHistory: View {
    var body: some View {
        NavigationView{
            VStack{
                GroupBox(
                    label: Label("Wallgreens Groceries", systemImage: "chart.bar")
                        .foregroundColor(.green)
                ) {
                    Text("$"+"25")
                }.padding()
                GroupBox(
                    label: Label("CostCo", systemImage: "chart.bar")
                        .foregroundColor(.blue)
                ) {
                    Text("$"+"100")
                }.padding().position(x:197,y:25)
                GroupBox(
                    label: Label("Target", systemImage: "circle.circle")
                        .foregroundColor(.red)
                ) {
                    Text("$"+"75")
                }.padding().position(x:197,y:-3)
                GroupBox(
                    label: Label("Capital One Billing", systemImage: "chart.bar")
                        .foregroundColor(.gray)
                ) {
                    Text("$"+"100")
                    
                }.padding().position(x:197,y:-33)
                
            }
        }}
}
    

struct TransactionHistory_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistory()
    }
}
