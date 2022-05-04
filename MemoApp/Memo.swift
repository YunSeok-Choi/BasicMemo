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
    @Published var bodyMemo: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.bodyMemo = content
        self.insertDate = insertDate
    }
}
