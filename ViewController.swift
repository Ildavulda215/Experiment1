//
//  ViewController.swift
//  Experiment 1
//
//  Created by Дмитрий Давыдов on 09.01.2021.
//  Copyright © 2021 Дмитрий Давыдов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 //    override func viewDidLoad() {
  //       super.viewDidLoad()
        // Do any additional setup after loading the view.
//    }
    @IBOutlet weak var ava: UIImageView!
    
    @IBAction func getimage(_ sender: Any) {
        
        // https://picsum.photos/200
       var url = URL(string: "https://picsum.photos/200")
        URLSession.shared.downloadTask(with: url!) { localUrl, response, error in
            var data = try! Data(contentsOf: localUrl!)
            var image = UIImage(data: data)
            DispatchQueue.main.async { self.ava.image = image }
        }.resume()
    }
    
}

