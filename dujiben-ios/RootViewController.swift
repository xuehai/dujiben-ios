//
//  RootViewController.swift
//  dujiben-ios
//
//  Created by zengxuehai on 2018/2/23.
//  Copyright © 2018年 zengxuehai. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    let cellIdentifier = "TableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildUI()
    }
    
    func buildUI(){
        self.title = "读记本"
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let addButton : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(addButtonPressed))
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func addButtonPressed(sender: UIBarButtonItem){
        print("to add a book")
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
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as UITableViewCell
        cell.textLabel?.text = "cell"
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }

}
