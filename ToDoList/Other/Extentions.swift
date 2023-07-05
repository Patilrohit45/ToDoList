//
//  Extentions.swift
//  ToDoList
//
//  Created by Rohit Patil on 04/07/23.
//

import Foundation


extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}

