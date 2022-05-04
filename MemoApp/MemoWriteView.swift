//
//  MemoWriteView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/30.
//

import SwiftUI

struct MemoWriteView: View {
    @EnvironmentObject var store: MemoStore
    
    var memo: Memo? = nil
    
    @State var titleMemo = ""
    @State var bodyMemo = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("메모 제목", text: $titleMemo)
                    .padding(.horizontal)
                    .font(.custom("", size: 40))
                    .onAppear {
                        if let memo = memo {
                            titleMemo = memo.titleMemo
                        }
                    }
                
                TextEditor(text: $bodyMemo)
                    .padding(.horizontal)
                    .onAppear{
                        if let memo = memo {
                            bodyMemo = memo.bodyMemo
                        }
                    }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    store.insert(title: titleMemo, body: bodyMemo)
                } label: {
                    Text("완료")
                }
            }
        }
    }
    
}

struct MemoWriteView_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriteView()
            .environmentObject(MemoStore())
    }
}
