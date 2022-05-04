//
//  MemoStore.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/05/04.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(titleMemo: "Hello", bodyMemo: "word" ,insertDate: Date.now),
            Memo(titleMemo: "EE", bodyMemo: "RR", insertDate: Date.now)
        ]
    }
    
    func insert(title: String, body: String){
        list.insert(Memo(titleMemo: title, bodyMemo: body), at: 0)
    }
    
    
}
