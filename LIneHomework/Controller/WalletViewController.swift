//
//  WalletViewController.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/29.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let stamps = ["money","code","reader","paper","home","point","card","coupon","heart","investment","check","securities","max","shop","smile","paint"]
    
    let nameLabel = ["送信","コード支払い","コードリーダー","LINEチラシ","家計簿","LINEポイント","マイカード","クーポン","ほけん","スマート投資","スコア","証券","BITMAX","ショッピング","スタンプショップ","着せ替えショップ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.stamps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as!UIImageView
        let cellImage = UIImage(named: stamps[indexPath.row])
        imageView.image = cellImage
        
        let label = cell.contentView.viewWithTag(2) as! UILabel
        label.text = nameLabel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace : CGFloat = 30
        let cellSize : CGFloat = self.view.frame.size.width / 4 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("select collectionView")
    }

    @IBAction func homeAction(_ sender: Any) {
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: false)
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
}
