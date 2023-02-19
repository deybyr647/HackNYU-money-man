//
//  HackNYUApp.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/18/23.
//

import SwiftUI

@main
struct HackNYUApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView1()
        }
    }
} /*
struct showTabView: App {
    var body: some Scene {
        WindowGroup {
            ContentView1()
            TabView{
                NavigationView{
                    Profile()
                }.tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    HomePage()
                }.tabItem{
                    Image(systemName: "airplane.circle")
                    Text("Discover")
                }
                
            }
        }
    }
}
*/
