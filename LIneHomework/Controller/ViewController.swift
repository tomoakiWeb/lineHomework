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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    @IBAction func homeAction(_ sender: Any) {
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: false)
    }
    
    @IBAction func timeAction(_ sender: Any) {
        let timeVC = self.storyboard?.instantiateViewController(identifier: "TimeViewController") as! TimeViewController
        self.navigationController?.pushViewController(timeVC, animated: false)
    }
    
    @IBAction func newsAction(_ sender: Any) {
        let newsVC = self.storyboard?.instantiateViewController(identifier: "NewsViewController") as! NewsViewController
        self.navigationController?.pushViewController(newsVC, animated: false)
    }
    
    @IBAction func walletAction(_ sender: Any) {
        let walletVC = self.storyboard?.instantiateViewController(identifier: "WalletViewController") as! WalletViewController
        self.navigationController?.pushViewController(walletVC, animated: false)
    }
}

