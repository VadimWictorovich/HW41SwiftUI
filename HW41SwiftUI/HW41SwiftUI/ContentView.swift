//
//  ContentView.swift
//  HW41SwiftUI
//
//  Created by Вадим Игнатенко on 12.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var light: [Double] = [0.3, 0.3, 0.3]
    @State private var indexVal = 0

    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.red.opacity(light[0]))
                .frame(width: 150,height: 150)
                .padding()
            Circle()
                .foregroundColor(.yellow.opacity(light[1]))
                .frame(width: 150,height: 150)
                .padding()
            Circle()
                .foregroundColor(.green.opacity(light[2]))
                .frame(width: 150,height: 150)
                .padding()
            Button(action: {
                nextLight()
            }) {
                Text("NEXT")
                .frame(width: 100, height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(15)
                .padding()
            }

        }
    }
    
    private func nextLight() {
        light[indexVal] = 1.0
        for index in light.indices {
            if index != indexVal {
                light[index] = 0.3
            }
        }
        indexVal += 1
            if indexVal >= light.count {
                indexVal = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
