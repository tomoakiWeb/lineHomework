//
//  HomeViewController.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/23.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var MyselfImageView: UIImageView!
    
    var homeGroupList = HomeGroupList()
    //lazy遅延処理
    lazy var sectionTitle: NSArray = ["知り合いかも?","グループ \(self.homeGroupList.groupList.count)","友達 \(self.homeGroupList.friendList.count)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        
        //画像を丸くする
        MyselfImageView.contentMode = .scaleAspectFill
        MyselfImageView.clipsToBounds = true
        MyselfImageView.layer.cornerRadius = MyselfImageView.frame.height / 2
    }
    
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    //セクションのタイトル
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section] as? String
    }
    
    // Table Viewのセルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return homeGroupList.maybeFirendList.count
        } else if section == 1 {
            return homeGroupList.groupList.count
        } else if section == 2 {
            return homeGroupList.friendList.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // HomeCell の ID で UITableViewCell のインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        
        if indexPath.section == 0 {
            print("indexPath.section == 0")
            cell.homeIconImageView.image = UIImage(named: homeGroupList.maybeFirendList[indexPath.row].homeIconImage)
            cell.titleLabel.text = homeGroupList.maybeFirendList[indexPath.row].title
        } else if indexPath.section == 1 {
            cell.homeIconImageView.image = UIImage(named: homeGroupList.groupList[indexPath.row].homeIconImage)
            cell.titleLabel.text = homeGroupList.groupList[indexPath.row].title
            print("indexPath.section == 1")
        } else if indexPath.section == 2 {
            print("indexPath.section == 2")
            cell.homeIconImageView.image = UIImage(named: homeGroupList.friendList[indexPath.row].homeIconImage)
            cell.titleLabel.text = homeGroupList.friendList[indexPath.row].title
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func talkAction(_ sender: Any) {
        let viewVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(viewVC, animated: false)
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
