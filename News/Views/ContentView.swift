//
//  ContentView.swift
//  News
//
//  Created by Zhang Xu on 2022/3/13.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){
                post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                                .line
                        }
                    }
                
            }
            .navigationBarTitle("NEWS")
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


