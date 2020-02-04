//
//  ViewController.swift
//  UIScrollView-UIImage-ZoomIn Feb 3 2020
//
//  Created by Margiett Gil on 2/3/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var subwayMap: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        //provide a maximumZoomScale of greater that 1
        // 1 is the default value, if not set won't zoom
        scrollView.maximumZoomScale = 5.0
    }


}
extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayMap
    }
}
