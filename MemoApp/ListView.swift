//
//  ListView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/05/03.
//

import SwiftUI

struct ListView: View {
    @State var subname = ["메모장1", "메모장2"]
    var body: some View {
        NavigationView {
            List {
                ForEach(subname, id: \.self){ s in
                    NavigationLink(destination: EmptyView()){
                        Text(s)
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
