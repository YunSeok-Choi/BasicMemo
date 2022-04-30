//
//  MemoWriteView.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/30.
//

import SwiftUI

struct MemoWriteView: View {
    @State var titleMemo = ""
    @State var bodyMemo = "Hello"
    var body: some View {
        VStack {
            NavigationView{
                VStack{
                    TextField("memotitle", text: $titleMemo)
                        .padding(.horizontal)
                        .font(Font.system(size: 40, design: .default))
                        
                    TextEditor(text: $bodyMemo)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
        }
    }
}

struct MemoWriteView_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriteView()
    }
}
