//
//  PhotoDetailViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/30/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var PhotoDetailDisplay: UIImageView!
    var photo : Photos? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo { title = realPhoto.caption

        // Do any additional setup after loading the view.
    
        if let cellPhotoImageData = realPhoto.imageData {
            if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
            PhotoDetailDisplay.image = cellPhotoImage}
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

