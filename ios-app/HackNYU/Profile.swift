//
//  Profile.swift
//  HackNYU
//
//  Created by Arnav Kumar on 2/18/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView{
      
                VStack{
                    Spacer()
                            Image("DB")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.blue, lineWidth: 4)
                                )
                            Spacer()
                            Text("User: Deyby Rodriguez")
                                .padding()
                            Spacer()
                }
                
              
                
            
            
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
