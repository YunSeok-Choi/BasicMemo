//
//  ContentView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: MemoStore
    
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
                VStack(alignment: .center, spacing: 0.2){
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("검색", text: $research)
                    }
                    .padding()
                    .background(Color.init(red: 0.95, green: 0.95, blue: 0.95),alignment: .center)
                    .cornerRadius(15)
                    .padding()
                }
                
                
                
                
                
                List{
                    ForEach(store.list){ memo in
                        NavigationLink{
                            MemoWriteView()
                        } label: {
                            ListView(memo: memo)
                        }
                        
                    }
                }.listStyle(.plain)
                    
                
                NavigationLink(destination: MemoWriteView()){
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
                
            }.navigationTitle("")
                .navigationBarHidden(true)
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MemoStore())
    }
}
