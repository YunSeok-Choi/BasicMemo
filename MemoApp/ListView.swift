//
//  ListView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/05/03.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(memo.bodyMemo)
                .font(.body)
                .lineLimit(1)
            Text(memo.insertDate,style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
            
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(memo: Memo(content: "Test"))
    }
}
