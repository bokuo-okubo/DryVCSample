//
//  FirstViewController.swift
//  DryVCSample
//
//  Created by Yohei Okubo on 3/27/16.
//  Copyright © 2016 bko. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func loadView() {
      if let view = UINib(nibName: "FirstView", bundle: nil).instantiateWithOwner(self, options: nil).first as? UIView {
      self.view = view
      }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1Clicked(sender: AnyObject) {
      print("ここまで来てる")
      performSegueWithIdentifier("button1", sender: self)
    }

    @IBAction func button2Clicked(sender: AnyObject) {
      performSegueWithIdentifier("button2", sender: self)
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
