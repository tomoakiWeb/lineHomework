//
//  TimeViewController.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/24.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var timeList = TimeList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TimeCell", bundle: nil), forCellReuseIdentifier: "TimeCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeList.list.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeCell", for: indexPath) as! TimeCell
        cell.userName.text = timeList.list[indexPath.row].userName
        cell.timeIconImageView.image = UIImage(named: timeList.list[indexPath.row].timeIconImage)
        cell.timeImageView.image = UIImage(named: timeList.list[indexPath.row].timeImage)
        cell.timeLabel.text = timeList.list[indexPath.row].timeLabel
        cell.goodCount.text = String(timeList.list[indexPath.row].goodCount)
        cell.commentCount.text = String(timeList.list[indexPath.row].commentCount)
        cell.shareCount.text = String(timeList.list[indexPath.row].shareCount)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 400
        return 400
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    @IBAction func homeAction(_ sender: Any) {
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: false)
    }
    
    @IBAction func talkAction(_ sender: Any) {
        let viewVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(viewVC, animated: false)
    }
}
