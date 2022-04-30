//
//  ContentView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    @State var research: String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Text("메모")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding()
                
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("검색", text: $research)
                    
                }.padding()
                
                Spacer()
                
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
