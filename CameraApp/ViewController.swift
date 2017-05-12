//
//  ViewController.swift
//  CameraApp
//
//  Created by Nafisur Ahmed on 12/05/17.
//  Copyright © 2017 Nafisur Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!

    var image = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        image.delegate = self
    }


    @IBAction func ButtonTapped(_ sender: Any) {
        image.sourceType = .photoLibrary
        present(image, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let photo = info[UIImagePickerControllerOriginalImage]
        imageView.image = photo as? UIImage
        image.dismiss(animated: true, completion: nil)
    }
}

