//
//  ContentView.swift
//  SwiftUI T14
//
//  Created by M Fadli Zein on 13/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack{
                ForEach(0 ..< 5){ item in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300, alignment: .top)
            .padding()
            .background(Color.white)
            .mask(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white, Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
