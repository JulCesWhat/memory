//
//  ContentView.swift
//  memory
//
//  Created by Julio Cesar Whatley on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var isFacedUp = true
    var body: some View {
        ZStack {
            if isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
                
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

