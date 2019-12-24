//
//  ViewController.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/19.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var messageList = MessageList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.barStyle = .black
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //メッセージの数
        return messageList.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        cell.messageLabel.text = messageList.list[indexPath.row].message
        cell.userNameLabel.text = messageList.list[indexPath.row].sender
        cell.timeLabel.text = messageList.list[indexPath.row].time
        cell.iconImageView.image = UIImage(named: messageList.list[indexPath.row].iconImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //セルの高さを可変
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 70
        return 70
    }

    @IBAction func homeAction(_ sender: Any) {
        print("home")
        let homeViewControoler = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeViewControoler,animated: false)
    }
    
}

