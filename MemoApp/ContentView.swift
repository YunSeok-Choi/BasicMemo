//
//  ContentView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("멤모")
                    .font(.title)
                
                NavigationLink(destination: EmptyView()){
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
