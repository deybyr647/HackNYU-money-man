//
//  ContentView.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/18/23.
//
import SwiftUI

struct ContentView1: View {
    @State private var isShowingDetailView = false
    @State private var isShowingDetailView2 = false
    

    var body: some View {
        NavigationView{
            ZStack {
               
                LinearGradient(gradient: Gradient(colors: [.purple, .orange]),
                               startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                Text("Money Man").bold().foregroundColor(.white).font(.system(size: 30))
                HStack {
                                NavigationLink(destination: InputFieldsView(), isActive: $isShowingDetailView) { EmptyView() }

                                Button("Sign-Up") {
                                    isShowingDetailView = true
                                }.position(x: 270, y: 455).buttonStyle(.borderedProminent)
                    NavigationLink(destination: loginInput(), isActive: $isShowingDetailView2) { EmptyView() }

                    Button("Login") {
                        isShowingDetailView2 = true
                    }.position(x: -75, y: 455).buttonStyle(.borderedProminent)
                            }
                
                
                /* Button("Login", action: {
                    // Handle login button tap
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10).position(x: 300, y: 550)
                
                Button("Signup", action: {
                    // Handle signup button tap
                })
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10).position(x: 100, y: 550) */
                
            }
        }
    }
}
struct InputFieldsView: View {
    @State private var isShowingDetailView4 = false
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            
            TextField("First Name", text: $firstName)
                .textFieldStyle(.roundedBorder)
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(.roundedBorder)
            
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
            HStack {
                NavigationLink(destination: HomePage(), isActive: $isShowingDetailView4) { EmptyView() }
                
                Button("Let's Go!") {
                    isShowingDetailView4 = true
                }.position(x: 180, y: 100).buttonStyle(.borderedProminent)
                
            }
            
        }
        
        .padding()
    }
}
struct loginInput: View {
    @State private var HackNYUApp = true
    @State private var showTabView = false
    @State private var isShowingDetailView3 = false
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        if showTabView{
            TabView{
                NavigationView{
                    Profile()
                }.tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
                NavigationView{
                    HomePage()
                }.tabItem{
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
                NavigationView{
                    ChatGPT()
                }.tabItem{
                    Image(systemName: "externaldrive.badge.wifi")
                    Text("Chat-GPT")
                }
                NavigationView{
                    TransactionHistory()
                }.tabItem{
                    Image(systemName: "chart.bar.xaxis")
                    Text("Transactions")
                }
            }
        }
        else{
            ZStack{
                
                VStack {
                    
                    TextField("email", text: $username)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("password", text: $password)
                        .textFieldStyle(.roundedBorder)
                    
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink(destination: HomePage(), isActive: $isShowingDetailView3) { EmptyView() }
                        
                        Button("Let's Go!") {
                            isShowingDetailView3 = true
                            showTabView = true
                            HackNYUApp = false
                        }.position(x: 180, y: 100).buttonStyle(.borderedProminent)
                        
                    }
                }
                
                .padding()
            }
        }
        }
    
}
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView1()
        }
    }
