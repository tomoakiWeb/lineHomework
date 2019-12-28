//
//  HomeGroupList.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/24.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import Foundation



class HomeGroupList {
    var maybeFirendList = [HomeGroup]()
    var groupList = [HomeGroup]()
    var friendList = [HomeGroup]()
    
    init() {
        maybeFirendList.append(HomeGroup(title:"tom,bob,...",homeIconImage: "tom"))
        groupList.append(HomeGroup(title: "グループ作成", homeIconImage: "cat"))
        groupList.append(HomeGroup(title: "オープンチャット", homeIconImage: "hana"))
        friendList.append(HomeGroup(title: "Emma", homeIconImage: "emma"))
        friendList.append(HomeGroup(title: "Ava", homeIconImage: "Ava"))
        friendList.append(HomeGroup(title: "Olivia", homeIconImage: "olivia"))
        friendList.append(HomeGroup(title: "William", homeIconImage: "william"))
        friendList.append(HomeGroup(title: "Noah", homeIconImage: "noah"))
        friendList.append(HomeGroup(title: "Liam", homeIconImage: "liam"))
        
    }
}
