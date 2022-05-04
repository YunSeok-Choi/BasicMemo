//
//  MemoStore.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/05/04.
//

import Foundation

class MemoStore: Identifiable, ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello",insertDate: Date.now)
        ]
    }
    
    func insert(memo: String){
        list.insert(Memo(content: memo), at: 0)
    }
    
    
}
