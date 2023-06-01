//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Tejash Barbhaya on 01/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                NavigationLink {
                    ListView(listModels: listValues)
                } label: {
                    Text("Push for ListView")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
