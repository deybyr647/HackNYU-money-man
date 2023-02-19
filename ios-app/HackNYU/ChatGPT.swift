//
//  ChatGPT.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/19/23.
//

import SwiftUI

 struct ChatGPT: View {
    @State private var text = ""
    @State var username: String = ""
    var body: some View {
        
        VStack {
            NavigationView {
                
                Form {
                    Text("Question example: Looking at my spending habits, how do you think I should better save my money")
                    TextField("Ask", text: $username, axis: .vertical).textFieldStyle(.roundedBorder)
                        .padding()
                }
                .navigationBarTitle("Ask Chat-GPT")
                
            }
            VStack{
                GroupBox(
                            label: Label("Response", systemImage: "chart.bar")
                                .foregroundColor(.green)
                        ) {
                            Text("Reply:")
                        }.padding()
            }
        }
    }
}
/*
struct ChatGPT: View {
    @State private var message = ""
    @State private var response = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $message)
                .frame(height: 150)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button(action: sendMessage) {
                Text("Send")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            if !response.isEmpty {
                GroupBox(
                    label: Label("Response", systemImage: "chart.bar")
                        .foregroundColor(.green)
                ) {
                    Text(response)
                }
                .padding()
            }
            
            Spacer()
        }
        .navigationBarTitle("Ask Chat-GPT")
        .padding()
    }
    
    func sendMessage() {
        // Code to send message and get response goes here
        response = "Reply: Your message was '\(message)'"
        message = ""
    }
}

*/

struct ChatGPT_Previews: PreviewProvider {
    static var previews: some View {
        ChatGPT()
    }
}
