//
//  ContentView.swift
//  H4X0R News
//
//  Created by AKHIL KUNJUMON MARKOSE on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            NavigationView{
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("H4X0R News")
                .frame(alignment: .leading)
            }
            .onAppear() {
                self.networkManager.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
