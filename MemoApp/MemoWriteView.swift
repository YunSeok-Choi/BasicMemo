//
//  MemoWriteView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/30.
//

import SwiftUI

struct MemoWriteView: View {
    @State var titleMemo = ""
    @State var bodyMemo = "아무내용"
    var body: some View {
            VStack{
                VStack{
                    TextField("메모 제목", text: $titleMemo)
                        .padding(.horizontal)
                        .font(.custom("", size: 40))
                    
                    TextEditor(text: $bodyMemo)
                        .padding(.horizontal)
                }
                .padding()
                .navigationBarItems(trailing: NavigationLink(destination: ContentView(), label: {
                    Text("완료")
                }))
            }
        
    }
}

struct MemoWriteView_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriteView()
    }
}
