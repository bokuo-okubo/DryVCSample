//
//  SecondViewController.swift
//  DryVCSample
//
//  Created by Yohei Okubo on 3/27/16.
//  Copyright © 2016 bko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  @IBOutlet weak var label: UILabel!

  var labelBackgroundColor = UIColor(red: 240.0/255, green: 118.0/255, blue: 101.0/255, alpha: 1.0)

  override func loadView() {
    print("SecondViewきたっ！！！")
    if let view = UINib(nibName: "SecondView", bundle: nil).instantiateWithOwner(self, options: nil).first as? UIView {
      self.view = view
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    label.backgroundColor = labelBackgroundColor
  }

  @IBAction func buttonDismissTapped(sender: AnyObject) {
    presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }
  
}
