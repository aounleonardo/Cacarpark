//
//  CarsCollectionViewController.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

private let reuseIdentifier = "carsCollectionViewCell"

class CarsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, CarInfoDelegate, CarDeleteDelegate {
    
    
    
    func showCarInfo(carId id: Int) {
        let destination = storyboard?.instantiateViewController(withIdentifier: "carDetails") as! CarDetailsTableViewController
        destination.car = data.car(forId: id)
        show(destination, sender: self)
    }
    
    func deleteCar(withId id: Int) {
        data.deleteCar(withId: id)
        collectionView?.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        //    self.collectionView!.register(CarsCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2) - 6, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data.cars.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CarsCollectionViewCell
        
        let car = data.cars[indexPath.row]
        
        cell?.lbl_available.text = car.isFree ? "1" : "0"
        cell?.lbl_model.text = car.model
        cell?.lbl_brand.text = car.brand
        cell?.carId = car.identifier
        cell?.carInfoDelegate = self
        cell?.carDeleteDelegate = self
        
        
        // Configure the cell
        
        return cell!
    }
    
}
