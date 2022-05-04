//
//  File.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/05/04.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var titleMemo: String
    @Published var bodyMemo: String
    let insertDate: Date
    
    init(titleMemo: String, bodyMemo: String, insertDate: Date = Date.now){
        id = UUID()
        self.titleMemo = titleMemo
        self.bodyMemo = bodyMemo
        self.insertDate = insertDate
    }
}
