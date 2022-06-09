//
//  ChatUser.swift
//  CustomCellTableViewApp
//
//  Created by Pritam Dash on 09/06/22.
//

import Foundation
class ChatUser {
    var userName : String = ""
    var statusText : String = ""
    var lastTextTime : String = ""
    var imageOfUser : String = ""
    
    init(userName : String ,statusText : String ,lastTextTime : String ,imageOfUser : String){
        self.userName = userName
        self.statusText = statusText
        self.lastTextTime = lastTextTime
        self.imageOfUser = imageOfUser
    }
}
