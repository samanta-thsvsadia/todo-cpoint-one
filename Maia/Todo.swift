//
//  Todo.swift
//  Maia
//
//  Created by Sadia Thasina on 25/08/2023.
//

import Foundation

struct Todo: Identifiable {
let id = UUID()
var title: String
var subtitle = ""
var isCompleted = false
}
