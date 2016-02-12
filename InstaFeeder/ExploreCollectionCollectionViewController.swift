//
//  ExploreCollectionCollectionViewController.swift
//  InstaFeeder
//
//  Created by Мануэль on 12.02.16.
//  Copyright © 2016 AuroraInterplay. All rights reserved.
//

import UIKit


class ExploreCollectionCollectionViewController: UICollectionViewController {
    
    
    let _leftAndRightPaddings : CGFloat = 32.0
    let _numberOfItemsPerRow  : CGFloat = 3.0
    let _heightAdjustment     : CGFloat = 30.0

        
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = UIColor.whiteColor()
        
        //Configuring collection view
        let width = ((CGRectGetWidth(collectionView!.frame) - _leftAndRightPaddings) / _numberOfItemsPerRow)
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSizeMake(width, width + _heightAdjustment)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("explorePhotoCell", forIndexPath: indexPath) as! ExplorePhotoCollectionViewCell
    
        cell._imageView?.image = UIImage(named: "no image")
    
        return cell
    }
   
}
