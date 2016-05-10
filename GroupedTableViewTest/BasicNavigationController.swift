//
//  BasicNavigationController.swift
//  GroupedTableViewTest
//
//  Created by 麻生 拓弥 on 2016/05/10.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

import UIKit

class BasicNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // NavigationBar の設定は子供のを使う
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.visibleViewController;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
