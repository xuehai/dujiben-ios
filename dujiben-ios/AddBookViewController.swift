//
//  AddBookViewController.swift
//  dujiben-ios
//
//  Created by xuehai  on 2018/3/1.
//  Copyright © 2018年 zengxuehai. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar : UISearchBar!
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        if let path = Bundle.main.path(forResource: "AppConfig", ofType: "plist"), let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
            let url = dict["db-api-query-book"] as! String
        }
    }

}
