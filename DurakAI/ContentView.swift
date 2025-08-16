import SwiftUI

struct ContentView: View {
    @State private var log: [String] = ["Новая игра началась!"]
    
    var body: some View {
        VStack {
            Text("Игра Дурак с ИИ")
                .font(.title)
                .padding()
            
            ScrollView {
                ForEach(log, id: \.self) { line in
                    Text(line)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
            }
            .border(Color.gray)
            
            HStack {
                Button("Подкинуть") {
                    log.append("Вы подкинули карту")
                }
                Button("Взять") {
                    log.append("Вы взяли карты")
                }
                Button("Новая игра") {
                    log = ["Новая игра началась!"]
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
