//
//  Topic008AnswerView.swift
//  
//
//  Created by Yusaku Nishi on 2022/09/21.
//

import SwiftUI

enum Topic008 {
    
    struct Application: Identifiable {
        let id = UUID()
        let thumbnail: Color
        let name: String
        let subtitle: String
    }
}

/// <doc:Topic008>
public struct Topic008AnswerView: View {
    public init() {}
    
    public var body: some View {
        Text("Code your layout here!")
    }
}

struct Topic008AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        Topic008AnswerView()
    }
}
