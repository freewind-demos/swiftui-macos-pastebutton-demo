import SwiftUI

struct ContentView: View {
    @State private var pastedText = "先复制一段文本，再点系统 PasteButton。"

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            PasteButton(payloadType: String.self) { strings in
                pastedText = strings.joined(separator: "\n")
            }

            Text("粘贴结果")
                .font(.headline)

            Text(pastedText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.quaternary.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}
