//
//  Message.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/19.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import Foundation
import UIKit

class Message {
    let sender: String
    let message: String
    let time: String
    let iconImage:String
    
    init(sender: String,message: String, time: String, iconImage: String) {
        self.sender = sender
        self.message = message
        self.time = time
        self.iconImage = iconImage
    }
    
}
