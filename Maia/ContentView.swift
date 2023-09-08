//
//  ContentView.swift
//  Maia
//
//  Created by Sadia Thasina on 25/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todos = [
        Todo(title: "Feed the cat", isCompleted: true),
        Todo(title: "Play with cat", subtitle: "Use his favourite String!"),
        Todo(title: "Get allergies"),
        Todo(title: "Run away from cat"),
        Todo(title: "Get a new cat")]
    
    var body: some View {
        NavigationStack {  
        List($todos) { $todo in
        HStack {
        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
            .onTapGesture {
                todo.isCompleted.toggle()
            }
        
        VStack(alignment: .leading) {
            
            Text(todo.title)
                .strikethrough(todo.isCompleted)
        }
    }
}
.navigationTitle("Todos")
      }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
