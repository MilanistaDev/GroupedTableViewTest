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

    private let cellLabelTuple = [(["Internal Settings"]),
                                  (["About this App", "How to use", "New Featrue"]),
                                  (["Libraries", "Acknowledge", "Bug report", "This App Version"])
    ]

    private let FooterStr = "This is Grouped TableView Sample App.\nPlease access GitHub and check sample code."

    override func viewDidLoad() {
        super.viewDidLoad()

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

    /*
      セクションの中のセル数
    */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.cellLabelTuple[section].count
    }

    /*
      セルを返す
    */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = super.tableView(tableView, cellForRowAtIndexPath: indexPath)
        cell.textLabel?.text = cellLabelTuple[indexPath.section][indexPath.row]

        return cell
    }

    /*
     フッターの表示
     */
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {

        switch section {
        case 2:
            return FooterStr
        default:
            return ""
        }
    }

    // MARK:- Other Method

    /*
     ステータスバーの文字色を白にする
     */
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    // MARK:- Memory Warning

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
