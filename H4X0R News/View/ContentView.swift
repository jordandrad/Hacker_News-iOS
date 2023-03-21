//
//  ContentView.swift
//  H4X0R News
//
//  Created by Jordan Andrade on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        ZStack{
            NavigationView{
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                    .navigationTitle("X4X0R NEWS")
                }
        
        //    .padding()
        }
        .onAppear {
            networkManager.fetchData()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}

