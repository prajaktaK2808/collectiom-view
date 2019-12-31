//
//  ViewController.swift
//  collectionView
//
//  Created by Felix ITs 08 on 06/12/19.
//  Copyright © 2019 FelixITS. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate{
    var numberArray = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...30
        {
            numberArray.append(i)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    fileprivate let numberofitem = 4
    fileprivate let inset = UIEdgeInsetsMake(10, 10, 10, 10)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let collectionWidth = collectionView.bounds.width
        let totalemptyspace = (inset.left + inset.right ) + ((inset.left)*CGFloat(numberofitem - 1))
        let totalitemspace = collectionWidth - totalemptyspace
        let width = totalemptyspace / CGFloat (numberofitem)
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return inset
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
     return inset.left
    }
    

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
        cell.numberLable.text = String(numberArray[indexPath.row])
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

