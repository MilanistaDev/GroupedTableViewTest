//
//  GroupedTableViewController.swift
//  GroupedTableViewTest
//
//  Created by 麻生 拓弥 on 2016/05/10.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

import UIKit

class GroupedTableViewController: UITableViewController {

    private let sectionNameTuple = ["SETTINGS",
                                    "ABOUT THIS APP",
                                    "ACKNOWLEDGE"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
      セクションの数
    */
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.sectionNameTuple.count
    }

    /*
      セクション名
    */
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionNameTuple[section]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
     ステータスバーの文字色を白にする
     */
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}
