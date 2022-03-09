//
//  ContentView.swift
//  MyImage
//
//  Created by 박힘찬 on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    let my_tistory = "https://himnimal.tistory.com"
    let my_github = "https://github.com/himchan05"
    let my_notion = "https://shelled-shift-84a.notion.site/PARK-HIM-CHAN-73190156c22f46c481676024a066f6d8"
    
    var body: some View {
        NavigationView {
            VStack {
                Image("MybgImage")
                    .frame(height: 0) // or use ZStack
                    .offset(y: -400) // y postion : from default to -500

                ImageView()
                    .padding()
                
                HStack {
                    NavigationLink(destination: WebView(urlToLoad: my_tistory)) {
                        Text("My Tistory")
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(15)
                            .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                    }
                    NavigationLink(destination: WebView(urlToLoad: my_github)) {
                        Text("My Github")
                            .padding()
                            .background(Color.cyan)
                            .cornerRadius(15)
                            .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                        }
                    NavigationLink(destination: WebView(urlToLoad: my_notion)) {
                        Text("My Notion")
                            .padding()
                            .background(Color.green)
                            .cornerRadius(15)
                            .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                        }
                }
                .padding(.vertical, 100)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
