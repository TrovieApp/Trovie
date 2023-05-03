//
//  ViewController.swift
//  Trovie
//
//  Created by Benjamin Hoesli on 28.03.23.
//

import UIKit


import Foundation
import WebKit


class MovieViewController: UIViewController {

    @IBOutlet weak var TrailerView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: "qvsgGtivCgs")
        
        // Do any additional setup after loading the view.
        func getVideo(videoCode: String){
            let url=URL(string: "https://www.youtube.com/embed/\(videoCode)")
            TrailerView.load(URLRequest(url:url!))
        }
        
    }
    


}

