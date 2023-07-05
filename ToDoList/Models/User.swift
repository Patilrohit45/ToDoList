//
//  User.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import Foundation


struct User:Codable{
    let id:String
    let name:String
    let email:String
    let joined:TimeInterval
}
