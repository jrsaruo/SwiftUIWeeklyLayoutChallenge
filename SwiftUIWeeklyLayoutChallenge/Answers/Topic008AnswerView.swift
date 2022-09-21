//
//  Topic008AnswerView.swift
//  
//
//  Created by Yusaku Nishi on 2022/09/21.
//

import SwiftUI

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

// MARK: - Sample data -

enum Topic008 {

    struct Application: Identifiable {
        let id = UUID()
        let thumbnail: Color
        let name: String
        let subtitle: String
    }
}

extension Topic008.Application {
    
    @available(iOS 15, *)
    static let samples: [Self] = [
        .init(thumbnail: .orange,
              name: "App Name 1",
              subtitle: "Subtitle 1"),
        .init(thumbnail: .yellow,
              name: "アプリ名 2",
              subtitle: "サブタイトル 2"),
        .init(thumbnail: .green,
              name: "Long App Name 3 - Long App Name 3",
              subtitle: "Subtitle 3"),
        .init(thumbnail: .mint,
              name: "長い長いアプリ名 4 - 長い長いアプリ名 4 - 長い長いアプリ名 4",
              subtitle: "サブタイトル 4"),
        .init(thumbnail: .teal,
              name: "Long App Name 5 - Long App Name 5",
              subtitle: "Long Subtitle 5 - Long Subtitle 5"),
        .init(thumbnail: .cyan,
              name: "長い長いアプリ名 6 - 長い長いアプリ名 6 - 長い長いアプリ名 6",
              subtitle: "長い長いサブタイトル 6 - 長い長いサブタイトル 6"),
        .init(thumbnail: .blue,
              name: "App Name 7",
              subtitle: "Subtitle 7"),
        .init(thumbnail: .indigo,
              name: "アプリ名 8",
              subtitle: "サブタイトル 8"),
        .init(thumbnail: .purple,
              name: "App Name 9",
              subtitle: "Subtitle 9"),
        .init(thumbnail: .red,
              name: "アプリ名 10",
              subtitle: "Subtitle 10")
    ]
}
