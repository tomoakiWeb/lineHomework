//
//  MessageList.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/19.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import Foundation

class MessageList {
    var list = [Message]()
    
    init() {
        list.append(Message(sender: "tom", message: "hello", time: "15:00",iconImage:"tom"))
        list.append(Message(sender: "cat", message: "エサください。おなか減った。", time: "13:30",iconImage:"cat"))
        list.append(Message(sender: "jack", message: "明日は手術です。", time: "15:45",iconImage:"jack"))
        list.append(Message(sender: "kevin", message: "飛行機で出張", time: "21:00",iconImage:"kevin"))
        list.append(Message(sender: "park", message: "眠たすぎる。", time: "13:11",iconImage:"park"))
        list.append(Message(sender: "mary", message: "おはようございます", time: "15:15",iconImage:"mary"))
        list.append(Message(sender: "kally", message: "hello world!!", time: "18:20",iconImage:"kally"))
        list.append(Message(sender: "hana", message: "hello??????", time: "1:50",iconImage:"hana"))
        list.append(Message(sender: "maria", message: "フランスに行ってきます。", time: "4:00",iconImage:"maria"))
        list.append(Message(sender: "hanako", message: "おこずかいください。", time: "5:00",iconImage:"hanako"))
    }
}
