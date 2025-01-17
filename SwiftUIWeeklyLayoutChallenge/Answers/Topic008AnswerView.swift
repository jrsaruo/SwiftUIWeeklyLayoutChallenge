//
//  Topic008AnswerView.swift
//  
//
//  Created by Yusaku Nishi on 2022/09/21.
//

import SwiftUI

/// <doc:Topic008>
@available(iOS 15, *)
public struct Topic008AnswerView: View {
    
    private let applications: [Topic008.Application]
    
    public init(applications: [Topic008.Application]) {
        self.applications = applications
    }
    
    public var body: some View {
        NavigationView {
            List(applications) { app in
                applicationRow(for: app)
                    .listSectionSeparator(.hidden)
                    .modifier(ListRowSeparatorTrailingInsetModifier())
            }
            .listStyle(.inset)
            .navigationTitle("App")
        }
    }
    
    private func applicationRow(for application: Topic008.Application) -> some View {
        Label {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(application.name)
                        .lineLimit(2)
                    Text(application.subtitle)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                Spacer()
                Button {
                    print("アプリを入手")
                } label: {
                    Text("入手")
                        .bold()
                        .padding([.leading, .trailing], 8)
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
            }
        } icon: {
            application.thumbnail
                .frame(width: 64, height: 64)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
        }
        .labelStyle(.verticallyCentered)
    }
}

// MARK: - ListRowSeparatorTrailingInsetModifier -

struct ListRowSeparatorTrailingInsetModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        if #available(iOS 16, *) {
            content
                .alignmentGuide(.listRowSeparatorTrailing) { dimensions in
                    dimensions[.trailing]
                }
        } else {
            // FIXME: iOS 15 style
            content
                .padding([.top, .bottom], 4)
        }
    }
}

// MARK: - VerticallyCenteredLabelStyle -

@available(iOS 15, *)
struct VerticallyCenteredLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

@available(iOS 15, *)
extension LabelStyle where Self == VerticallyCenteredLabelStyle {
    static var verticallyCentered: Self { .init() }
}

// MARK: - Preview -

@available(iOS 15, *)
struct Topic008AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        Topic008AnswerView(applications: Topic008.Application.samples)
    }
}

// MARK: - Sample data -

public enum Topic008 {

    public struct Application: Identifiable {
        public let id = UUID()
        public let thumbnail: Color
        public let name: String
        public let subtitle: String
    }
}

extension Topic008.Application {
    
    @available(iOS 15, *)
    public static let samples: [Self] = [
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
