//
//  ViewController.swift
//  harker-lunch-ios
//
//  Created by Neeraj Aggarwal on 3/2/17.
//  Copyright © 2017 Neeraj Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var site: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //bound frame
        self.site.frame = self.view.bounds
        self.site.scalesPageToFit = true
        //load page
        let url = NSURL (string: "http://tiny.cc/lunchmenu");
        let requestObj = NSURLRequest(url: url! as URL);
        site.loadRequest(requestObj as URLRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

