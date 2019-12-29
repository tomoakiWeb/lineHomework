//
//  NewsViewController.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/28.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit
import SegementSlide

class NewsViewController: SegementSlideViewController {
    @IBOutlet weak var headerBar: UIToolbar!
    @IBOutlet weak var footerBar: UIToolbar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        scrollToSlide(at: 0, animated: true)
        self.view.addSubview(footerBar)
        
    }

    override var headerView: UIView? {
        return headerBar
    }
    
    override var titlesInSwitcher: [String]{
        return ["TOP","国内","経済","IT"]
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {

        switch index {
            case 0:
                return TopNewsViewController()
            case 1:
                return DomesticNewsViewController()
            case 2:
                return EconomyNewsViewController()
            case 3:
                return ITNewsViewController()
            default:
                return TopNewsViewController()
        }
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
}
