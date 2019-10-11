//
//  GalleryItem.swift
//  ch42297_assignment5
//
//  Created by Christina Hoang on 10/9/19.
//  Copyright © 2019 Christina Hoang. All rights reserved.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    
    //@IBOutlet weak var galleryImage: UIImageView!
    @IBOutlet weak var galleryCaption: UILabel!
    
}


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let identifier = "CollectionCell"
    var items = [String]()
    
    // create dictionary of instances
    var galleryItems = [String: GalleryItem]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accessPlist()

    }
    
    private func accessPlist() {
        // locate plist
        let inputFile = Bundle.main.path(forResource: "AnimalGallery", ofType: "plist")
        let inputDataArray = NSArray(contentsOfFile: inputFile!)
    
        // access plist and create new instance of GalleryItem
        for input in inputDataArray as! [Dictionary <String, [String]>] {
            for (key, value) in input {
                let newGalleryItem = GalleryItem.init(image: "\(value[0])", caption: "\(value[1])")
                galleryItems[key] = newGalleryItem
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath as IndexPath) as! AnimalCollectionViewCell
        
        cell.galleryCaption?.text = "Wow"
        return cell
    }
    
    //MARK: UICollectionViewFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let length = view.frame.size.width
        return CGSize(width: length, height: length)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //return UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        return UIEdgeInsets.init()
    }
}
